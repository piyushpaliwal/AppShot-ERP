using System;
using System.Linq;
using System.Data.SqlClient;
using System.Configuration;
using WindingsIndia.BL;

namespace WindingsIndia
{
    public partial class IssueIndents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WindingsIndiaCS"].ConnectionString);
                    SqlCommand indentNumberQuery = new SqlCommand();
                    indentNumberQuery.Connection = con;
                    int indentNumber = Common.GetMaxIndentNumber(con);
                    txtIndentNumber.Value = indentNumber.ToString();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
    }
}