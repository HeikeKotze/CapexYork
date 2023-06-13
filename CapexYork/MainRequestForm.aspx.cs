using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapexYork
{
    public partial class _MainRequestForm : Page
    {
        Guid capexId = Guid.NewGuid();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HKotze\Desktop\CAPEX\CapexYork\App_Data\DBCapex.mdf;Integrated Security=True");
            string sqlqueryAsset = "select * from [dbo].[AssetCategory]";
            SqlDataAdapter sda = new SqlDataAdapter(sqlqueryAsset, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            drpAssetCategory.DataSource = dt;
            drpAssetCategory.DataValueField = "CategoryName";
            drpAssetCategory.DataTextField = "CategoryName";
            drpAssetCategory.DataBind();

            string sqlqueryProjectClassification = "select * from [dbo].[ProjectCategory]";
            SqlDataAdapter sda2 = new SqlDataAdapter(sqlqueryProjectClassification, con);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            drpProjectClassification.DataSource = dt2;
            drpProjectClassification.DataValueField = "ProjectCategoryName";
            drpProjectClassification.DataTextField = "ProjectCategoryName";
            drpProjectClassification.DataBind();

            string sqlqueryMillorDepartment = "select * from [dbo].[MillorDepartment]";
            SqlDataAdapter sda3 = new SqlDataAdapter(sqlqueryMillorDepartment, con);
            DataTable dt3 = new DataTable();
            sda3.Fill(dt3);
            drpMillorDepartment.DataSource = dt3;
            drpMillorDepartment.DataValueField = "MillDeptName";
            drpMillorDepartment.DataTextField = "MillDeptName";
            drpMillorDepartment.DataBind();

            //set default value of Company
            txtCompany.Text = "York Timbers";

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HKotze\Desktop\CAPEX\CapexYork\App_Data\DBCapex.mdf;Integrated Security=True";
            string query = "INSERT INTO MainRequestForm (CapexId, ProjectNumber, LocationCostCode,BalanceSheetCode, Company, ProjectTitle, MillorDepartment, ProjectInitiatedBy, AssetCategory, TotalCost, ProjectClassification, ProjectShortDescription, AmountThisRequest, PreviouslyAuthorized, TotalAuthorization, AmountInBudget, WriteOffAmount, PaybackPeriod, IRR, NPV, ProjectStartupDate,ProjectManager) VALUES (@CapexId, @ProjectNumber, @LocationCostCode, @BalanceSheetCode, @Company, @ProjectTitle, @MillorDepartment, @ProjectInitiatedBy, @AssetCategory, @TotalCost, @ProjectClassification, @ProjectShortDescription, @AmountThisRequest, @PreviouslyAuthorized, @TotalAuthorization, @AmountInBudget, @WriteOffAmount, @PaybackPeriod, @IRR, @NPV, @ProjectStartupDate,@ProjectManager)";

            //Retrieve form values
            Guid capexId = Guid.NewGuid();
            string projectNumber = txtProjectNum.Text;
            string locationCostCode = txtLocationCostCode.Text;
            string balanceSheetCode = txtBalanceSheetCode.Text;
            string company = txtCompany.Text;
            string projectTitle = txtProjectTitle.Text;
            string millorDepartment = drpMillorDepartment.SelectedValue;
            string projectInitiatedBy = txtProjectInitiated.Text;
            string assetCategory = drpAssetCategory.SelectedValue;
            string totalCost = txtCost.Text;
            string projectClassification = drpProjectClassification.SelectedValue;
            string amountThisRequest = txtAmountThisRequest.Text;
            string previouslyAuthorized = txtPreviouslyAuthorized.Text;
            string totalAuthorization = txtTotalAuthorization.Text;
            string amountInBudget = txtAmountinBudget.Text;
            string writeOffAmount = txtWriteOffAmount.Text;
            string paybackPeriod = txtPaybackPeriod.Text;
            string iRR = txtIRR.Text;
            string nPV = txtNPV.Text;
            string projectStartupDate = txtStartupDate.Text;
            string projectManager = txtProjectManager.Text;

            //blob Short Description
            //string content = Request.Form["tiny"];
            string Desc = Description.InnerHtml;
            //byte[] blobDescription = Encoding.UTF8.GetBytes(Request.Form["Description"]);
            //string convertedString = ConvertBlobToString(blobDescription);
            //string descString = System.Text.Encoding.UTF8.GetString(Encoding.UTF8.GetBytes(Request.Form["Description"]));


            using (SqlConnection connection = new SqlConnection(connectionstring))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    if (capexId == null)
                    {
                        command.Parameters.AddWithValue("@CapexId", DBNull.Value);
                    }
                    else
                    command.Parameters.AddWithValue("@CapexId", capexId);

                    if (string.IsNullOrEmpty(projectNumber))
                    {
                        command.Parameters.AddWithValue("@ProjectNumber", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@ProjectNumber", projectNumber);
      
                    if (string.IsNullOrEmpty(locationCostCode))
                    {
                        command.Parameters.AddWithValue("@LocationCostCode", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@LocationCostCode", locationCostCode);

                    if (string.IsNullOrEmpty(balanceSheetCode))
                    {
                        command.Parameters.AddWithValue("@BalanceSheetCode", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@BalanceSheetCode", balanceSheetCode);

                    if (string.IsNullOrEmpty(company))
                    {
                        command.Parameters.AddWithValue("@Company", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@Company", company);

                    if (string.IsNullOrEmpty(projectTitle))
                    {
                        command.Parameters.AddWithValue("@ProjectTitle", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@ProjectTitle", projectTitle);
                    if (string.IsNullOrEmpty(millorDepartment))
                    {
                        command.Parameters.AddWithValue("@MillorDepartment", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@MillorDepartment", millorDepartment);

                    if (string.IsNullOrEmpty(projectInitiatedBy))
                    {
                        command.Parameters.AddWithValue("@ProjectInitiatedBy", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@ProjectInitiatedBy", projectInitiatedBy);

                    if (string.IsNullOrEmpty(assetCategory))
                    {
                        command.Parameters.AddWithValue("@AssetCategory", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@AssetCategory", assetCategory);

                    if (string.IsNullOrEmpty(totalCost))
                    {
                        command.Parameters.AddWithValue("@TotalCost", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@TotalCost", totalCost);

                    if (string.IsNullOrEmpty(projectClassification))
                    {
                        command.Parameters.AddWithValue("@ProjectClassification", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@ProjectClassification", projectClassification);

                    if (string.IsNullOrEmpty(Desc))
                    {
                        command.Parameters.AddWithValue("@ProjectShortDescription", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@ProjectShortDescription", Desc);

                    if (string.IsNullOrEmpty(amountThisRequest))
                    {
                        command.Parameters.AddWithValue("@AmountThisRequest", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@AmountThisRequest", amountThisRequest);

                    if (string.IsNullOrEmpty(previouslyAuthorized))
                    {
                        command.Parameters.AddWithValue("@PreviouslyAuthorized", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@PreviouslyAuthorized", previouslyAuthorized);

                    if (string.IsNullOrEmpty(totalAuthorization))
                    {
                        command.Parameters.AddWithValue("@TotalAuthorization", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@TotalAuthorization", totalAuthorization);

                    if (string.IsNullOrEmpty(amountInBudget))
                    {
                        command.Parameters.AddWithValue("@AmountInBudget", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@AmountInBudget", amountInBudget);

                    if (string.IsNullOrEmpty(writeOffAmount))
                    {
                        command.Parameters.AddWithValue("@WriteOffAmount", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@WriteOffAmount", writeOffAmount);

                    if (string.IsNullOrEmpty(paybackPeriod))
                    {
                        command.Parameters.AddWithValue("@PaybackPeriod", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@PaybackPeriod", paybackPeriod);

                    if (string.IsNullOrEmpty(iRR))
                    {
                        command.Parameters.AddWithValue("@IRR", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@IRR", iRR);

                    if (string.IsNullOrEmpty(nPV))
                    {
                        command.Parameters.AddWithValue("@NPV", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@NPV", nPV);

                    if (string.IsNullOrEmpty(projectStartupDate))
                    {
                        command.Parameters.AddWithValue("@ProjectStartupDate", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@ProjectStartupDate", projectStartupDate);

                    if (string.IsNullOrEmpty(projectManager))
                    {
                        command.Parameters.AddWithValue("@ProjectManager", DBNull.Value);
                    }
                    else
                        command.Parameters.AddWithValue("@ProjectManager", projectManager);

                   
                    
                    command.ExecuteNonQuery();
                }
            }

            Session["user"] = txtProjectInitiated.Text;
            Response.Redirect("/ExecutiveSummary.aspx");
            
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtProjectNum.Text = "";
            txtLocationCostCode.Text = "";
            txtBalanceSheetCode.Text = "";
            txtCompany.Text = "";
            txtProjectTitle.Text = "";
            drpMillorDepartment.SelectedIndex = 0;
            txtProjectInitiated.Text = "";
            drpAssetCategory.SelectedIndex = 0;
            txtCost.Text = "";
            drpProjectClassification.SelectedIndex = 0;
            Description.InnerText = "";
            txtAmountThisRequest.Text = "";
            txtPreviouslyAuthorized.Text = "";
            txtTotalAuthorization.Text = "";
            txtAmountinBudget.Text = "";
            txtWriteOffAmount.Text = "";
            txtPaybackPeriod.Text = "";
            txtIRR.Text = "";
            txtNPV.Text = "";
            txtStartupDate.Text = "";
            txtProjectManager.Text = "";

        }


    }
}