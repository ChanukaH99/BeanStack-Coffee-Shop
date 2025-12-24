using BeanStack_Coffee_Shop.Models;
using BeanStack_Coffee_Shop.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BeanStack_Coffee_Shop.dal
{
    internal interface IInventoryRepository
    {
        inventory Add(inventory inventory);
        List<inventory> GetAll();
    }
}
