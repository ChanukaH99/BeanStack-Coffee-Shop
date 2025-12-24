using BeanStack_Coffee_Shop.Controllers;
using BeanStack_Coffee_Shop.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeanStack_Coffee_Shop.Views
{
    public partial class InventoryP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadInventoryData();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            //helo
        }

        protected void btnAddCoffee_Click(object sender, EventArgs e)
        {
            string CoffeNAME = txtCoffeeName.Text.Trim();
            if (!decimal.TryParse(txtPrice.Text.Trim(), out decimal price))
            {

                return;
            }
            String discription = txtDescription.Text.Trim();
            string imagePath = "";

            // Hard Code
            //string CoffeNAME = "Test4 Espresso";
            //decimal price = 140.50m;
            //string discription = "A strong and rich test coffee.";
            //string imagePath = "~/Images/Items/sample1.jpg";

            if (fileImage.HasFile)
            {
                string fileName = Path.GetFileName(fileImage.FileName);
                imagePath = "~/Images/Items/" + fileName;
                fileImage.SaveAs(Server.MapPath(imagePath));
            }

            inventory coffee = new inventory
            {
                CoffeeName = CoffeNAME,
                price = price,
                Discription = discription,
                ImagePath = imagePath
            };

           

            InventoryController inventoryController = new InventoryController();
            inventoryController.Create(coffee);

            ClearForm();
        }
        private void ClearForm()
        {
            txtCoffeeName.Text = "";
            txtPrice.Text = "";
            txtDescription.Text = "";

        }
        private void LoadInventoryData()
        {
            InventoryController inventoryController = new InventoryController();
            List<inventory> inventoryList = inventoryController.GetAllInventory();

            DataTable dt = new DataTable();
            dt.Columns.Add("Id", typeof(int)); // ✅ Add this line
            dt.Columns.Add("CoffeeName", typeof(string));
            dt.Columns.Add("Price", typeof(decimal));
            dt.Columns.Add("Description", typeof(string)); // Optional, if you need it
            dt.Columns.Add("CreatedAt", typeof(DateTime));
            dt.Columns.Add("UpdatedAt", typeof(DateTime));

            foreach (var inven in inventoryList)
            {
                dt.Rows.Add(
                    inven.Id,
                    inven.CoffeeName,
                    inven.price,
                    inven.Discription,
                    inven.CreatedAt,
                    inven.UpdatedAt
                );
            }
            gvInventory.DataSource = dt;
            gvInventory.DataBind();
        }
    }
}