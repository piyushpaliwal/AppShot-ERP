using System;
using System.Linq;
using System.Collections.Generic;
using System.Web.UI;

namespace WindingsIndia
{
    public partial class AddAssembly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                List<KeyValuePair<string, string>> rawMaterial = new List<KeyValuePair<string, string>>();
                ViewState["RawMaterial"] = rawMaterial;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            List<KeyValuePair<string, string>> rawMaterial = (List<KeyValuePair<string, string>>)ViewState["RawMaterial"];
            rawMaterial.Add(new KeyValuePair<string, string>(txtRawIdForAssembly.Value, txtQuantityForAssembly.Value));
            rptRawMaterial.DataSource = rawMaterial;
            rptRawMaterial.DataBind();
            ViewState["RawMaterial"] = rawMaterial;
            txtQuantityForAssembly.Value = "";
            txtRawIdForAssembly.Value = "";
            UpdatePanel1.Update();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Navigate", "document.getElementById('secondary').childNodes[1].childNodes[3].setAttribute(\"class\",'current'); document.getElementById('secondary').childNodes[1].childNodes[3].childNodes[0].click(); document.getElementById('secondary').childNodes[1].childNodes[1].removeAttribute(\"class\");", true);
        }
    }
}