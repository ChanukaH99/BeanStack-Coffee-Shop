using BeanStack_Coffee_Shop.Models;
using BeanStack_Coffee_Shop.Views;
using Dapper;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace BeanStack_Coffee_Shop.dal
{
    public class InventoryRepository : IInventoryRepository
    {

        private readonly string _connectionString;

        public InventoryRepository()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["MySqlDbContext"].ConnectionString;
        }

       

        public inventory Add(inventory inventory)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();


                string sql = @"INSERT INTO inventory (CoffeeName, Price, Description, ImagePath) 
                  VALUES (@CofeeName, @price, @Discription, @ImagePath);
                ";

                int inventoryId = connection.ExecuteScalar<int>(sql, new
                {
                    CofeeName = inventory.CoffeeName,
                    price = inventory.price,
                    Discription = inventory.Discription,
                    ImagePath = inventory.ImagePath
                });

                inventory.Id = inventoryId;

                return inventory;
            }
        }

        public List<inventory> GetAll()
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                string sql = "SELECT Id, CoffeeName, Price, Description, ImagePath , CreatedAt ,UpdatedAt FROM inventory";
                return connection.Query<inventory>(sql).ToList();
            }
        }
    }
}