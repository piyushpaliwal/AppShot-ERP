using System;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WindingsIndia
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WindingsIndiaCS"].ConnectionString);
                //SqlConnection con = new SqlConnection(@"Data Source=.\wisql01;Initial Catalog=WindingsIndiaDB;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = @"select IM.AssemblyID, IM.FiscalYear, IM.IndentNumber, ID.QuantityDue, ID.Vendor from indentmaster IM " +
                    "join IndentDetail ID on ID.IndentID = IM.IndentID " +
                    "where ID.Status like 'F%'";
                cmd.Connection = con;

                DataTable dtOpenIndents = new DataTable();
                SqlDataAdapter adpOpenIndents = new SqlDataAdapter(cmd);
                adpOpenIndents.Fill(dtOpenIndents);

                rptOpenIndents.DataSource = dtOpenIndents;
                rptOpenIndents.DataBind();

                cmd.Dispose();

                cmd.CommandText = @"select RW.RawMaterialID, RW.Description, RW.Stock from RawMaterialMaster RW " +
                    "where RW.Stock<RW.RefillLevel";
                cmd.Connection = con;

                DataTable dtRawMaterials = new DataTable();
                SqlDataAdapter adpRawMaterials = new SqlDataAdapter(cmd);
                adpRawMaterials.Fill(dtRawMaterials);

                rptRawMaterials.DataSource = dtRawMaterials;
                rptRawMaterials.DataBind();
            }
        }
    }
}