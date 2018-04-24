using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using Loader;


using System.Collections.Generic;

using System.Data.SqlClient;

using Telerik.Web.UI;
using System.ComponentModel;
using System.Text;



namespace My_Application
{
    public partial class frm_ESPN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblUserName.Text = (String)Session["Fullname"] + " !";

            }

        }

    }
}
