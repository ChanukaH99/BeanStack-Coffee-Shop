using BeanStack_Coffee_Shop.Models;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace BeanStack_Coffee_Shop.dal
{
    public class HomeRepository : IHomeRepository
    {
        private readonly string _connectionString;

        public HomeRepository() 
        {
            _connectionString = ConfigurationManager.ConnectionStrings["MySqlDbContext"].ConnectionString;
        }
        public Subscription CreateUser(Subscription subscription)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();

                String SQL = "INSERT INTO subscriptions (Email) VALUES (@Email)";

                using (var command = new MySqlCommand(SQL, connection))
                {
                    command.Parameters.AddWithValue("@Email", subscription.Email);
                    command.ExecuteNonQuery();
                }

                return subscription;
            }
        }
    }
}