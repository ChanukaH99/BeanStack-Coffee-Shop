using BeanStack_Coffee_Shop.dal;
using BeanStack_Coffee_Shop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BeanStack_Coffee_Shop.Controllers
{
    public class InventoryController : Controller
    {
        private readonly IInventoryRepository inventoryRepository;

        public InventoryController()
        {
            inventoryRepository = new InventoryRepository();
        }

        // GET: Inventory
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Create(inventory inventorys)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var createdInventory = inventoryRepository.Add(inventorys);
                    return RedirectToAction("Index", new { id = createdInventory.Id });
                }

                return View(inventorys);
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", "Unable to add inventory item. Please try again.");
                return View(inventorys);
            }
        }

        public List<inventory> GetAllInventory()
        {
            return inventoryRepository.GetAll();
        }
    }
}