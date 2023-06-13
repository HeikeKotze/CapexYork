using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapexYork
{
    public partial class _ExecutiveSummary : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSummary_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("/ProjectDetail.aspx");
        }

        protected void btnBackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MainRequestForm.aspx");
        }

        protected void btnClearPage_Click(object sender, EventArgs e)
        {
            
        }
    }
}