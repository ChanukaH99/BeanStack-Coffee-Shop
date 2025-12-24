using BeanStack_Coffee_Shop.Controllers;
using BeanStack_Coffee_Shop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeanStack_Coffee_Shop.Views
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bool loggedIn = Session["UserId"] != null;

                liLogin.Visible = !loggedIn;
                liRegister.Visible = !loggedIn;
                liLogout.Visible = loggedIn;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();      // remove everything we stored
            Session.Abandon();    // end the session
            Response.Redirect("~/Views/Dashbord.aspx");
        }

        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            String email = txtEmail.Text.Trim();



            var subscription = new Subscription { Email = email };

            
            var controller = new HomeController();
            controller.Creatsubscriptions(subscription);

            
            txtEmail.Text = "Subscribed successfully!";
        }
    }
}