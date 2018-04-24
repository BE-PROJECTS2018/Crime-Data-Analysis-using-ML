using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient ;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace SmartSystems_NS
{
    public partial class UserList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindgrid();
        }
        protected void bindgrid()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
            {

                SqlDataAdapter adaptor = new SqlDataAdapter("SELECT [Login_id],[FullName],[Emailaddress],[User_type],Deleted, Remarks FROM [Reg_user] ", connection);

                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                connection.Close();
            }
        }
    }
}
