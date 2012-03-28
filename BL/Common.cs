using System;
using System.Linq;
using System.Data.SqlClient;
using AjaxControlToolkit;
using System.Data;
using log4net;

namespace WindingsIndia.BL
{
    public class Common
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(Common).Name);
        /// <summary>
        /// Fills the Assembly Number into the supplied Drop Down List
        /// </summary>
        /// <param name="con">SqlConnection</param>
        /// <param name="list">DropDownList</param>
        public static void FillAssemblyNo(SqlConnection con, ComboBox list)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = @"Select AssemblyID from AssemblyMaster";
                cmd.Connection = con;

                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adp.Fill(dt);

                list.DataSource = dt;
                list.DataTextField = "AssemblyID";
                list.DataValueField = "AssemblyID";
                list.DataBind();
            }
            catch (Exception ex)
            {
                log.Error("Error filling assembly Number : " + ex.Message);
                throw ex;
            }
        }

        /// <summary>
        /// Gets the Maximum Indent Number.
        /// </summary>
        /// <param name="con">SqlConnection to pass</param>
        /// <returns>Integer value</returns>
        public static int GetMaxIndentNumber(SqlConnection con)
        {
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
                log.Error("Cannot get Indent Number : " + ex.Message);
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }

        /// <summary>
        /// Inserts the newly created indent into Indent Master and Indent Detail
        /// </summary>
        /// <param name="con">SqlConnection that is going to be used</param>
        /// <param name="indentNumber">Indent Number</param>
        /// <param name="requestDate">Requested Date</param>
        /// <param name="assmNo">Assembly Number</param>
        /// <param name="quantity">Quantity</param>
        /// <param name="vendor">Vendor Name</param>
        /// <returns>True if indent has been successfully inserted else it will return false</returns>
        public static bool ProcessIndent(SqlConnection con, int indentNumber, DateTime requestDate, string assmNo, double quantity, string vendor)
        {
            log.Info(string.Format("Indent Processing Started for Indent Number \"{0}\", dated \"{1}\"", indentNumber, requestDate));
            SqlTransaction trans;
            con.Open();
            trans = con.BeginTransaction();
            log.Info(string.Format("Transaction begin for Indent Number \"{0}\", dated \"{1}\"", indentNumber, requestDate));            
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "ProcessIndent";
                cmd.CommandType = CommandType.StoredProcedure;
                // Insert Parameters
                cmd.Parameters.AddWithValue("@indentNumber", indentNumber);
                cmd.Parameters.AddWithValue("@requestDate", requestDate);
                
                if (DateTime.Now.Month < 4)
                    cmd.Parameters.AddWithValue("@year", DateTime.Now.Year - 1);
                else
                    cmd.Parameters.AddWithValue("@year", DateTime.Now.Year);

                cmd.Parameters.AddWithValue("@assmNo", assmNo);
                cmd.Parameters.AddWithValue("@quantity", quantity);
                cmd.Parameters.AddWithValue("@vendor", vendor);
                cmd.Connection = con;
                cmd.Transaction = trans;
                cmd.ExecuteNonQuery();
                trans.Commit();
                log.Info(string.Format("Transaction committed for Indent Number \"{0}\", dated \"{1}\"", indentNumber, requestDate));            
                con.Close();
                return true;
            }
            catch (SqlException ex)
            {
                log.Error(string.Format("Error Processing Indent \"{0}\", dated \"{1}\" : {2}", indentNumber, requestDate, ex.Message));            
                trans.Rollback();
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
        /// <param name="con">SqlConnection con</param>
        /// <param name="rawMaterialID">The raw material ID.</param>
        /// <param name="description">The description.</param>
        /// <param name="cost">The cost.</param>
        /// <param name="uom">The uom.</param>
        /// <param name="stock">The stock.</param>
        /// <param name="reFill">The re fill.</param>
        /// <param name="modvatable">The modvatable.</param>
        /// <param name="teriff">The teriff.</param>
        public static void AddRawMaterial(SqlConnection con, string rawMaterialID, string description, double cost, string uom, double stock, double reFill, string modvatable, string teriff)
        {
            log.Info(String.Format("Raw Material Addition Started \"{0}\"", rawMaterialID));
            SqlTransaction trans;
            con.Open();
            trans = con.BeginTransaction();
            log.Info(String.Format("Transaction Started for Raw Material \"{0}\"", rawMaterialID));
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "AddRawMaterial";
                cmd.CommandType = CommandType.StoredProcedure;
                // Insert Parameters
                cmd.Parameters.AddWithValue("@rawMaterialID", rawMaterialID);
                cmd.Parameters.AddWithValue("@description", description);
                cmd.Parameters.AddWithValue("@uom", uom);
                cmd.Parameters.AddWithValue("@cost", cost);
                cmd.Parameters.AddWithValue("@stock", stock);
                cmd.Parameters.AddWithValue("@refill", reFill);
                cmd.Parameters.AddWithValue("@modvatable", modvatable);
                if (modvatable == "N")
                    teriff = string.Empty;
                cmd.Parameters.AddWithValue("@teriff", teriff);
                cmd.Connection = con;
                cmd.Transaction = trans;
                cmd.ExecuteNonQuery();
                trans.Commit();
                log.Info(String.Format("Transaction committed for Raw Material \"{0}\"", rawMaterialID));
                con.Close();
            }
            catch (SqlException ex)
            {
                log.Error(String.Format("Could not insert Raw Material \"{0}\" : \"{1}\"", rawMaterialID, ex.Message));
                trans.Rollback();
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
    }
}