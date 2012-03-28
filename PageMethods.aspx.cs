using System;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using WindingsIndia.BL;
using log4net;

namespace WindingsIndia
{
    public partial class PageMethods : System.Web.UI.Page
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(PageMethods).Name);
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        /// <summary>
        /// Get the WorkOrder Number associated to Assembly
        /// </summary>
        /// <param name="str">Assembly ID</param>
        /// <returns>Work Order Number as String</returns>
        [WebMethod]
        public static string GetWorkOrderNumber(string str)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WindingsIndiaCS"].ConnectionString);
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = @"SELECT workorder FROM AssemblyMaster WHERE AssemblyID=@id";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@id", str);
                string wo = string.Empty;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (reader.HasRows == true)
                {
                    while (reader.Read())
                    {
                        wo = reader[0].ToString();
                    }
                }
                log.Info(string.Format("Work Order Number \"{0}\" successfully generated.", wo));
                return wo;
            }
            catch (Exception ex)
            {
                log.Error("Work Order Number Retrieve failed : " + ex.Message);
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }

        
        /// <summary>
        /// Processes the indent.
        /// </summary>
        /// <param name="indentNumber">The indent number.</param>
        /// <param name="requestDate">The request date.</param>
        /// <param name="assmNo">The assembly no.</param>
        /// <param name="quantity">The quantity.</param>
        /// <param name="vendor">The vendor.</param>
        /// <returns></returns>
        [WebMethod]
        public static bool ProcessIndent(int indentNumber, DateTime requestDate, string assmNo, double quantity, string vendor)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WindingsIndiaCS"].ConnectionString);
            try
            {
                bool isIndentSuccessful = Common.ProcessIndent(con, indentNumber, requestDate, assmNo, quantity, vendor);
                return isIndentSuccessful;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();   
            }
        }

        /// <summary>
        /// Gets the indent number.
        /// </summary>
        /// <returns>integer Indent Number</returns>
        [WebMethod]
        public static int GetIndentNumber()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WindingsIndiaCS"].ConnectionString);
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = @"SELECT MAX(IndentNumber)+1 FROM IndentMaster WHERE FiscalYear=@year";
                cmd.Connection = con;
                int indentNumber = 0;

                if (DateTime.Now.Month < 4)
                    cmd.Parameters.AddWithValue("@year", DateTime.Now.Year - 1);
                else
                    cmd.Parameters.AddWithValue("@year", DateTime.Now.Year);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                if (reader.HasRows == true)
                {
                    while (reader.Read())
                    {
                        return Convert.ToInt16(reader[0]);
                    }
                }
                return indentNumber;
            }
            catch (Exception ex)
            {
                log.Error("Could not load Indent Number :" + ex.Message);
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }

        /// <summary>
        /// Adds the raw material.
        /// </summary>
        /// <param name="rawMaterialID">The raw material ID.</param>
        /// <param name="description">The description.</param>
        /// <param name="uom">The uom.</param>
        /// <param name="stock">The stock.</param>
        /// <param name="reFill">The re fill.</param>
        /// <param name="modvatable">Is modvatable.</param>
        /// <param name="teriff">The teriff.</param>
        [WebMethod]
        public static void AddRawMaterial(string rawMaterialID, string description, double cost, string uom, double stock, double reFill, string modvatable, string teriff)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WindingsIndiaCS"].ConnectionString);
            try
            {
                Common.AddRawMaterial(con, rawMaterialID, description, cost, uom, stock, reFill, modvatable, teriff);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }

        public static void AddRawMaterialToAssembly(string rawMaterialID, double quantity)
        {

        }
    }
}