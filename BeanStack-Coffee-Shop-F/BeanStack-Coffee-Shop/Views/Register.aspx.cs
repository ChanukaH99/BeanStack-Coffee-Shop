using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managemnt.View
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            String email = txtEmail.Text;

            if (email == "123")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Register Successful!');", true);
            }
        }
    }
}