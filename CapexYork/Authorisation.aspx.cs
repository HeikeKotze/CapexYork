using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapexYork
{
    public partial class _Authorisation : Page
    {
        DataTable dt = new DataTable();
        //string[] names = { "Heike","Gerhard","John" };
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HKotze\Desktop\CAPEX\CapexYork\App_Data\DBCapex.mdf;Integrated Security=True");
            string sqlqueryAsset = "select * from [dbo].[Roles]";
            SqlDataAdapter sda = new SqlDataAdapter(sqlqueryAsset, con);
            DataTable dd = new DataTable();
            sda.Fill(dd);
            drpSignatories.DataSource = dd;
            //drpSignatories.DataValueField = "Role";
            drpSignatories.DataTextField= "Role";
            drpSignatories.DataBind();

            if (!Page.IsPostBack)
            {
                if (ViewState["Records"] == null)
                {
                    dt.Columns.Add("Signatory");
                    dt.Columns.Add("Name");
                    dt.Columns.Add("Date");
                    dt.Columns.Add("Signature");
                    ViewState["Records"] = dt;
                }

            }


        }

        protected void btnBackAuth_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ProjectDetail.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            string name = (string)Session["user"];

            dt = (DataTable)ViewState["Records"];
            dt.Rows.Add(drpSignatories.Text,name, DateTime.Now.ToShortDateString().ToString());
            GridViewSignatures.DataSource = dt;
            GridViewSignatures.DataBind();
        }


    }
}