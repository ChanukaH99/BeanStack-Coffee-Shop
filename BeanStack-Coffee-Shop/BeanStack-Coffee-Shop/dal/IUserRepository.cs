using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Test.Models;

namespace Test.DAL
{
   interface IUserRepository
    {
        bool TestConnection();
        List<User> GetAllUsers();
        User CreateUser(User newUser);

        User GetUserByEmailAndPassword(string email, string password);
    }
}