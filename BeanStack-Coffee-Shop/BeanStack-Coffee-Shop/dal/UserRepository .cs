using MySql.Data.MySqlClient;
using Org.BouncyCastle.Crypto.Generators;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using Test.Models;
using Dapper;
using System.Diagnostics;
using System.Data.SqlClient;


namespace Test.DAL
{
    public class UserRepository : IUserRepository
    {
        private readonly string _connectionString;

        public UserRepository()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["MySqlDbContext"].ConnectionString;
        }

       
        public User CreateUser(User newUser)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();

                string hashedPassword = BCrypt.Net.BCrypt.HashPassword(newUser.Password);

                string sql = "INSERT INTO user (email, password, created_at) " +
                   "VALUES (@Email, @Password, @CreatedAt); " +
                   "SELECT LAST_INSERT_ID();";

                int userId = connection.ExecuteScalar<int>(sql, new
                {
                    Email = newUser.Email,
                    Password = hashedPassword,
                    CreatedAt = DateTime.UtcNow
                });

                newUser.Id = userId;

                return newUser;
            }
        }

        public List<User> GetAllUsers()
        {
            List<User> users = new List<User>();

            using (MySqlConnection connection = new MySqlConnection(_connectionString))
            {
                string query = "SELECT email, password FROM user"; // Removed id if it doesn't exist
                MySqlCommand command = new MySqlCommand(query, connection);

                connection.Open();

                using (MySqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        users.Add(new User
                        {
                            // Handle NULL user_name
                            Email = reader.IsDBNull(reader.GetOrdinal("email")) ?
                                   "Unknown User" : reader.GetString("email"),

                            // Handle NULL password
                            Password = reader.IsDBNull(reader.GetOrdinal("password")) ?
                                      "No Password" : "*******" // Mask actual passwords
                        });
                    }
                }
            }

            return users;
        }

        // Check the Authentication  part in DAL Layer.
        public User GetUserByEmailAndPassword(string email, string password)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                string sql = @"SELECT id, email, password AS Password, Role
                       FROM user
                       WHERE email = @email";

                var user = connection.QueryFirstOrDefault<User>(sql, new { email });

                if (user != null && BCrypt.Net.BCrypt.Verify(password, user.Password))
                {
                    return user; // Contains role
                }
                return null;
            }
        }

        public bool TestConnection()
        {
            try
            {
                using (var connection = new MySqlConnection(_connectionString))
                {
                    connection.Open();
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }






    }
}