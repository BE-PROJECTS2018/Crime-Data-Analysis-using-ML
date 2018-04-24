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
using System.DirectoryServices;
using System.Data.SqlClient;


namespace MyApplication
{
    public partial class Login1 : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;

        //static string con = ConfigurationSettings.AppSettings["Con"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Abandon();
                //BindDomains();
               
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
                string strUserId = txtLoginId.Text.ToString().Trim();
                string strPassword = txtPassword.Text.ToString().Trim();

                string strSQL = "sp_getauthentication '" + strUserId + "','" + strPassword + "'";
                SqlConnection conn = new SqlConnection(ConnectionString);

                conn.Open();
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                SqlDataReader reader = cmd.ExecuteReader();

                DataSet dsSessionDetails = new DataSet();
                try
                {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {

                                    Session["Login_id"] = (string)reader["Login_id"];
                                    Session["Access"] = (string)reader["User_Type"];
                                    Session["Fullname"] = (string)reader["Fullname"];

                                }
                                    Response.Redirect("frm_Welcome.aspx", false);
                            }
                            else
                            {
                                lblErrMsg.Text = "*Invalid User Id or Password (Domain)  !!*";
                                lblErrMsg.Visible = true;
                            }

                 }

                catch (Exception ex)
                {
                }
            
            
        }


        public string CheckSP(string Username, string Password, string Domain)
        {

            ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(ConnectionString);

            SqlCommand Command = new SqlCommand("SP_CheckLogin", con);

            Command.CommandType = CommandType.StoredProcedure;

            Command.Parameters.Add(new SqlParameter("@Username", SqlDbType.VarChar, 100));
            Command.Parameters[0].Value = Username;

            Command.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 100));
            Command.Parameters[1].Value = Password;

            Command.Parameters.Add(new SqlParameter("@Domain", SqlDbType.VarChar, 100));
            Command.Parameters[2].Value = Domain;

            

            Command.Parameters.Add(new SqlParameter("@OUTPUT", SqlDbType.VarChar, 100));
            Command.Parameters[3].Direction = ParameterDirection.Output;


            con.Open();

            Command.ExecuteNonQuery();

            con.Close();

            string dtGetUserUploadError = Convert.ToString(Command.Parameters[3].Value);
            return dtGetUserUploadError;

        }

        public string DAL_GetEMPLogin(string Username, string Password, string Domain, string Acesslevel)
        {

            ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(ConnectionString);

            SqlCommand Command = new SqlCommand("SP_CheckEmpCode", con);

            Command.CommandType = CommandType.StoredProcedure;

            Command.Parameters.Add(new SqlParameter("@Username", SqlDbType.VarChar, 100));
            Command.Parameters[0].Value = Username;

            Command.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 100));
            Command.Parameters[1].Value = Password;

            Command.Parameters.Add(new SqlParameter("@Domain", SqlDbType.VarChar, 100));
            Command.Parameters[2].Value = Domain;

            Command.Parameters.Add(new SqlParameter("@Admininstration", SqlDbType.VarChar, 100));
            Command.Parameters[3].Value = Acesslevel;

            Command.Parameters.Add(new SqlParameter("@OUTPUT", SqlDbType.VarChar, 100));
            Command.Parameters[4].Direction = ParameterDirection.Output;


            con.Open();

            Command.ExecuteNonQuery();

            con.Close();

            string dtGetUserUploadError = Convert.ToString(Command.Parameters[4].Value);
            return dtGetUserUploadError;

        }

        //private void BindDomains()
        //{
        //    DataSet dsDomain = new DataSet();
        //    try
        //    {
        //        Xml test = new Xml();

        //        dsDomain.ReadXml(Request.MapPath("XMLFiles/Domain.xml"));
        //        if (dsDomain.Tables.Count > 0)
        //        {
        //            if (dsDomain.Tables[0].Rows.Count > 0)
        //            {
        //                ddlDomain.DataValueField = "Domain_Text";
        //                ddlDomain.DataTextField = "Domain_Text";
        //                ddlDomain.DataSource = dsDomain.Tables[0];
        //                ddlDomain.DataBind();
        //                ddlDomain.Items.Insert(0, new ListItem("----Select Domain ----", " "));
        //                ddlDomain.Items.Insert(dsDomain.Tables[0].Rows.Count - 1, new ListItem("--Emp Code ----", "Emp_Code"));
        //            }
        //        }
        //    }

            //catch (Exception ex)
            //{
            //}
            //finally
            //{ dsDomain.Dispose(); }
        //}

        protected void btnReset_Click(object sender, EventArgs e)
        {
            lblErrMsg.Text = "";
            //ddlDomain.SelectedIndex = 0;
        }

        protected void lnkChangePassword_Click(object sender, EventArgs e)
        {
            try
            {
                lblErrMsg.Text = "";
                Response.Redirect("ChangePassword.aspx");
            }
            catch (Exception ex)
            {
            }
        }

    }
}

