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
using SmartSystems_NS;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;
using System.Text;
using System.Data.Common;
using System.Collections.Generic;

namespace SmartSystems_NS
{
    

    public partial class changePassword1 : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["LoginType"] == "Domain")
                {
                    this.ClientScript.RegisterStartupScript(this.GetType(), "", "<script language=\"javaScript\">"
                   + "alert('Domain Password cannot be changed from this tool. You will not be redirected to login page ');"
                   + "window.location.href='Login.aspx';" + "<" + "/script>");

                }
                if (!string.IsNullOrEmpty(Convert.ToString(Session["Emp"])))
                {
                    txtUserName.Text = Session["Emp"].ToString();
                }
                else
                {
                    txtUserName.Text = Session["Login_Name"].ToString();
                }
            }
            catch (Exception ex)
            {
               
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataTable dtChangePwd = new DataTable();

            Label lblError = new Label();
            string ires = string.Empty;
            try
            {
                ires = DAL_GetChangePassword(txtUserName.Text, txtOldPassword.Text, txtNewPassword.Text, txtConfirmPassword.Text);
                if (ires=="1")
                {

                    this.ClientScript.RegisterStartupScript(this.GetType(), "", "<script language=\"javaScript\">"
                   + "alert('Password Change SuccessFully. ');"
                   + "window.location.href='Login.aspx';" + "<" + "/script>");

                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "Alert", "alert('"+ires+"');", true);
                }

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "Alert", "alert('" + ex.Message + "');", true);

            }
        }

        public string DAL_GetChangePassword(string Username, string oldPassword, string NewPassword, string ConfirmPassword)
        {

            ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(ConnectionString);

            SqlCommand Command = new SqlCommand("SP_ChangePassword", con);

            Command.CommandType = CommandType.StoredProcedure;

            Command.Parameters.Add(new SqlParameter("@Username", SqlDbType.VarChar, 100));
            Command.Parameters[0].Value = Username;

            Command.Parameters.Add(new SqlParameter("@OldPassword", SqlDbType.VarChar, 100));
            Command.Parameters[1].Value = oldPassword;

            Command.Parameters.Add(new SqlParameter("@NewPassword", SqlDbType.VarChar, 100));
            Command.Parameters[2].Value = NewPassword;

            Command.Parameters.Add(new SqlParameter("@Confirm", SqlDbType.VarChar, 100));
            Command.Parameters[3].Value = ConfirmPassword;

            Command.Parameters.Add(new SqlParameter("@Setvalue", SqlDbType.VarChar, 100));
            Command.Parameters[4].Direction =ParameterDirection.Output;

            
            con.Open();

            Command.ExecuteNonQuery();

                 con.Close();

            string dtGetUserUploadError = Convert.ToString(Command.Parameters[4].Value);
            return dtGetUserUploadError;

        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            try
            {
                clear();
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "0", "<script language='javascript'>window.close();</script>");
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex0)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "Alert", "alert('" + ex0.Message + "');", true);
            }
        }
        
        private void clear()
        {
            txtUserName.Text = "";
            txtConfirmPassword.Text = "";
            txtNewPassword.Text = "";
            txtOldPassword.Text = "";
        }

        protected void lnkLogin_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
            }
        }
    }
}
