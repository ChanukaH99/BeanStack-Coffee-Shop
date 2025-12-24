using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace BeanStack_Coffee_Shop.Views
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTestConnection_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MySqlDbContext"]?.ConnectionString;

            if (string.IsNullOrEmpty(connectionString))
            {
                lblConnectionStatus.Text = "❌ Error: Connection string not configured in Web.config";
                lblConnectionStatus.CssClass = "alert-danger";
                pnlResults.Visible = true;
                return;
            }

            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();
                    lblConnectionStatus.Text = "✅ Connection to MySQL database successful!";
                    lblConnectionStatus.CssClass = "alert-success";
                    btnShowUsers.Visible = true;
                }
            }
            catch (MySqlException ex)
            {
                lblConnectionStatus.Text = $"❌ Connection failed: {ex.Message}";
                lblConnectionStatus.CssClass = "alert-danger";
                btnShowUsers.Visible = false;
            }

            pnlResults.Visible = true;
            gvUsers.Visible = false;
        }

        protected void btnShowUsers_Click(object sender, EventArgs e)
        {
            try
            {
                var repository = new Test.DAL.UserRepository();
                var users = repository.GetAllUsers();

                if (users != null && users.Count > 0)
                {
                    DataTable dt = new DataTable();
                    dt.Columns.Add("Username", typeof(string));
                    dt.Columns.Add("Password Status", typeof(string));

                    foreach (var user in users)
                    {
                        dt.Rows.Add(
                            user.Email,
                            string.IsNullOrEmpty(user.Password) ? "No Password" : "Password Set"
                        );
                    }

                    gvUsers.DataSource = dt;
                    gvUsers.DataBind();
                    gvUsers.Visible = true;

                    lblConnectionStatus.Text = $"✅ Found {users.Count} users";
                    lblConnectionStatus.CssClass = "alert-success";
                }
                else
                {
                    gvUsers.Visible = false;
                    lblConnectionStatus.Text = "ℹ️ No users found in database";
                    lblConnectionStatus.CssClass = "alert-info";
                }
            }
            catch (Exception ex)
            {
                gvUsers.Visible = false;
                lblConnectionStatus.Text = $"❌ Error loading users: {ex.Message}";
                lblConnectionStatus.CssClass = "alert-danger";
            }

            pnlResults.Visible = true;
        }
    }
}