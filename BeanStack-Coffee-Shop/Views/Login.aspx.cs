using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managemnt.View
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String email = txtEmail.Text;

            if (email == "123")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Successful!');", true);
            }
        }
    }
}