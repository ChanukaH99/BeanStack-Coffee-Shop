using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.DAL;
using Test.Models;

namespace Test.Controllers
{
    public class UserController : Controller
    {
        private readonly IUserRepository _userRepository;

        public UserController()
        {
            _userRepository = new DAL.UserRepository();  // Make sure this is using the interface
        }

        public ActionResult TestConnection()
        {
            bool isConnected = _userRepository.TestConnection();
            ViewBag.ConnectionStatus = isConnected ? "Success!" : "Failed!";
            return View();
        }

        public ActionResult Index()
        {
            var users = _userRepository.GetAllUsers();
            return View(users);
        }

         public ActionResult Create(User user)
    {
            try
            {
                if (ModelState.IsValid)
                {
                    var createdUser = _userRepository.CreateUser(user);
                    return RedirectToAction("Login", "Account", new { userId = createdUser.Id });
                }
                return View(user);
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", "Unable to create user. Please try again.");
                return View(user);
            }
        }


        public ActionResult Login(string email, string password)
        {
            var user = _userRepository.GetUserByEmailAndPassword(email, password);

            if (user != null)
            {
                Session["UserId"] = user.Id;
                Session["UserEmail"] = user.Email;
                Session["UserRole"] = user.Role;

                // Redirect based on role
                if (user.Role == "Admin")
                    return RedirectToAction("Dashboard", "Admin"); // You need AdminController
                else
                    return RedirectToAction("Dashboard", "User");  // You need User dashboard view/controller
            }

            ViewBag.Error = "Invalid email or password.";
            return View();
        }

        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Login");
        }
    }


}