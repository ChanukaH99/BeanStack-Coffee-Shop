using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test.Controllers;
using Test.Models;

namespace BeanStack_Coffee_Shop.Views
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = string.Empty;
          

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtEmail.Text.Trim();

                if (string.IsNullOrWhiteSpace(email))
                {
                    ShowError("Email is required");
                    return;
                }


                string password = txtPassword.Text;
                if (password.Length < 5)
                {
                    ShowError("Password must be at least 5 characters");
                    return;
                }


                if (password != txtConformPassword.Text)
                {
                    lblMessage.Text = "Passwords do not match!";
                    lblMessage.CssClass = "text-red-600 font-serif font-bold";
                    return;
                }

                var newUser = new User
                {
                    Email = txtEmail.Text.Trim(),
                    Password = txtPassword.Text.Trim()
                };


                var controller = new UserController();
                var createdUser = controller.Create(newUser);

                ClearForm();
                Session["RegistrationSuccess"] = true;
                Response.Redirect("Login.aspx");



            }
            catch (Exception ex)
            {

                lblMessage.Text = "Registration failed ";
                lblMessage.CssClass = "text-red-600 font-serif font-bold";


            }

        }

        private void ClearForm()
        {
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtConformPassword.Text = string.Empty;
        }

        private void ShowError(string message)
        {
            lblMessage.Text = message;
            lblMessage.CssClass = "text-red-600 font-serif font-bold";
        }

    }
}