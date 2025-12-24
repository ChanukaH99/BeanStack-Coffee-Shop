using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test.DAL;
using Test.Models;

namespace BeanStack_Coffee_Shop.Views
{
    public partial class Login : System.Web.UI.Page


    {
        private readonly UserRepository _userRepository = new UserRepository();

        protected void Page_Load(object sender, EventArgs e)
        {
            lblRememberMessage.Visible = true;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            User user = _userRepository.GetUserByEmailAndPassword(email, password);

            if (user != null)
            {
                Session["UserId"] = user.Id;
                Session["UserEmail"] = user.Email;
                Session["UserRole"] = user.Role;

                if (user.Role == "Admin")
                {
                    Response.Redirect("~/Views/AdminHome.aspx");
                }
                else if (user.Role == "User")
                {
                    Response.Redirect("~/Views/Dashbord.aspx");
                }
                else
                {
                    lblRememberMessage.Text = "Unknown role. Access denied.";
                }
            }
            else
            {
                lblRememberMessage.Text = "Invalid email or password.";
            }
        }

        private void ShowError(string message)
        {
            lblRememberMessage.Text = message;
            lblRememberMessage.Visible = true;
        }
    }
}