using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapexYork
{
    public partial class UserSign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            
        }

        protected void btnSign_Click(object sender, EventArgs e)
        {
            //ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);
            Response.Redirect("/Default.aspx");
        }
    }
}