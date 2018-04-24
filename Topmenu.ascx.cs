using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartSystems
{
    public partial class Topmenu : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["Access"] == "0") { RadMenu1.Items.FindItemByText("Data Entry").Visible = false; }
            if ((string)Session["Access"] == "0") { RadMenu1.Items.FindItemByText("Administration").Visible = false; }
            if ((string)Session["Access"] != "0") { RadMenu1.Items.FindItemByText("Administration").Visible = true; }
        }
    }
}