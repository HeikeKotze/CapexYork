using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace CapexYork
{

    public partial class _Default : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtID.Text.Trim();
            string password = txtPassword.Text.Trim();

            //connection string
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HKotze\Desktop\CAPEX\CapexYork\App_Data\DBCapex.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT COUNT(*) FROM LoginCredentials WHERE Username = @Username AND Password = @Password";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    int count = (int)command.ExecuteScalar();

                    if (count > 0)
                    {
                        Response.Redirect("/MainRequestForm.aspx");
                    }
                    else
                    {
                        string script = "alert('Incorrect username or password.');";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + script + "');", true);
                    }
                }
            }

        }
    }
}