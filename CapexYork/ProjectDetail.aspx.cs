using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapexYork
{
    public partial class _ProjectDetail : Page
    {

        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!Page.IsPostBack)
            {
                if(ViewState["Records"]==null)
                {
                    dt.Columns.Add("Risk Description");
                    dt.Columns.Add("Possible Consequence Classification");
                    dt.Columns.Add("Possible Likelihood Classification");
                    dt.Columns.Add("Impacts On");
                    dt.Columns.Add("Mitigating Strategy");
                    ViewState["Records"] = dt;
                }
                
            }
        }

        protected void NextAuth_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Authorisation.aspx");
        }

        protected void BackExec_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ExecutiveSummary.aspx");
        }

        protected void btnAddtoRisks_Click(object sender, EventArgs e)
        {
            dt = (DataTable)ViewState["Records"];
            dt.Rows.Add(txtRiskDescription.Text,drpPossibleConsequenceClass.SelectedValue,drpPossibleLikelihoodClass.SelectedValue,txtImpactsOn.Text,txtMitigatingStrategy.Text);
            dynamicGridView.DataSource = dt;
            dynamicGridView.DataBind();
        }

    }
}