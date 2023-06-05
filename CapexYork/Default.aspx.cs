using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapexYork
{

    public partial class _Default : Page
    {
        string Username = "Heike";
        string Password = "Password@!";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtID.Text == Username & txtPassword.Text == Password)
            {
                Response.Redirect("/MainRequestForm.aspx");
            }
            else
            {
                Response.Write("<script type = 'text/javascript'>alert('Hello');</script>");
            }
                
        }
    }
}