using BeanStack_Coffee_Shop.dal;
using BeanStack_Coffee_Shop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BeanStack_Coffee_Shop.Controllers
{
    public class HomeController : Controller
    {

        private readonly  IHomeRepository _homeRepository;

        public HomeController()
        {
            _homeRepository = new HomeRepository();
        }
        public ActionResult Creatsubscriptions(Subscription subscription)
        {
            if (ModelState.IsValid)
            {
                _homeRepository.CreateUser(subscription);
                TempData["SuccessMessage"] = "You have successfully subscribed!";
                return RedirectToAction("Index");
            }

            TempData["ErrorMessage"] = "There was an error with your subscription.";
            return RedirectToAction("Index");
        }
    }
}