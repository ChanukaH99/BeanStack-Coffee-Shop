using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BeanStack_Coffee_Shop.Models
{
    public class inventory
    {
        public int Id { get; set; }
        public string CoffeeName { get; set; }
        public decimal price { get; set; }
        public string Discription { get; set; }

        public string ImagePath { get; set; }

        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
    }
}