using BeanStack_Coffee_Shop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Test.Models;

namespace BeanStack_Coffee_Shop.dal
{
    internal interface IHomeRepository
    {

        Subscription CreateUser(Subscription subscription);
    }
}
