using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Data.SqlClient;
using System.Configuration;

namespace WindingsIndia.BL
{
    /// <summary>
    /// Handle to get the Assembly ID
    /// </summary>
    public class AppShotHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string search = context.Request.QueryString["term"];
            List<string> assmID = new List<string>();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WindingsIndiaCS"].ConnectionString);
            using (con)
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = @"SELECT RawMaterialID from RawMaterialMaster where RawMaterialID like '"+ search +"%'";
                    cmd.Connection = con;
                    //cmd.Parameters.AddWithValue("@search", search + "%");
                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader != null)
                        {
                            while (reader.Read())
                            {
                                assmID.Add(reader[0].ToString());
                            }
                        }
                    }
                }
            }
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            string json = serializer.Serialize(assmID);
            context.Response.Write(json);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}