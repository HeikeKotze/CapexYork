using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapexYork
{
    public partial class WebForm1 : System.Web.UI.Page
    { 
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\user\Desktop\YORK\Capex\CapexYork\CapexYork\App_Data\Database1.mdf;Integrated Security = True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "insert into MainRequestTable values('" + txtProjectNum.Text + "','" + txtBalanceSheetCode.Text + "','" + txtLocationCostCode.Text + "','"+ txtCompany.Text + "','" + txtProjectTitle.Text + "','" + txtMillorDepartment.Text + "','" + txtProjectInitiated.Text + "''" + drpAssetCategory.SelectedValue + "''" + txtCost.Text + "','" + drpProjectClassification.SelectedValue + "','" + MyBox.Text + "','" + txtAmountThisRequest.Text + "','" + txtPreviouslyAuthorized.Text + "','" + txtTotalAuthorization.Text + "','" + txtAmountinBudget.Text + "','" + txtWriteOffAmount.Text + "','" + txtPaybackPeriod.Text + "','" + txtIRR.Text + "','" + txtNPV.Text + "','" + txtNPV.Text + "','" + txtStartupDate.Text + "','" + txtProjectManager.Text+"')";
            //cmd.ExecuteNonQuery(); //-------------->error
            con.Close();
            Response.Redirect("/ExecutiveSummary.aspx");
        }

        protected void chbAuthorizations_SelectedIndexChanged(object sender, EventArgs e)
        {
            for(int i = 0; i < chbAuthorizations.Items.Count; i++)
            {
                txtLabel.Text = "You selected:";
                if(chbAuthorizations.Items[i].Selected)
                {
                    txtLabel.Text += chbAuthorizations.Items[i].Text + "<br/>";                   
                }
            }
        }
    }
}