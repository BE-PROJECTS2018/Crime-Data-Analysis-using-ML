using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Loader;
using Telerik.Web.UI;
using System.Data.OleDb;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace My_Application
{
    public partial class frm_ManageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                
                ddlAccessLevel.Items.Insert(0, new RadComboBoxItem("0"));
                ddlAccessLevel.Items.Insert(0, new RadComboBoxItem("1"));
            }
        }
   
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;
            //SQL string to execute 
            string strSQL = "sp_Get_Authentication_Data '" + txtLoginID.Text + "'";
            //Create a connection 
            SqlConnection conn = new SqlConnection(ConnectionString);

            conn.Open();
            //Execute the SQL String 
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    txtLoginID.Text = (string)reader["Login_ID"];
                    ddlAccessLevel.Text = (string)reader["access"];
                    txtEmpName.Text = (string)reader["FullName"];
                    txtemail.Text = (string)reader["Emailaddress"];
                }
            }
            else
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "", "<script language=\"javaScript\">"
                      + "alert('User does not exists.');"
                      +"<" + "/script>");
                txtLoginID.Text = "";
                txtEmpName.Text = "";
                
              
            }

            conn.Close();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtLoginID.Text = "";
            txtEmpName.Text = "";
            lblResetPwd.Text = "";
        }

        protected void cmdUpload_Click(object sender, EventArgs e)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(
                       ConnectionString))
            {
                SqlCommand command = new SqlCommand("sp_FinalMove_LoginUpload '" + (string)Session["Emp_ID"] + "'", connection);
                command.Connection.Open();
                command.ExecuteNonQuery();
            }

        }

        //protected void cmdValidate_Click(object sender, EventArgs e)
        //{

        //    string filepath ;
        //    //filepath=UploadFileToServer();
        //    if (filepath != "")
        //    {
        //        Loader.Control_Binder.importDataFromExcel(filepath, Session["ProcessName"].ToString());
        //        BindGrid(GridView1);
        //    }

        //}

        private void BindGrid(GridView gridControl)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
            {

                SqlDataAdapter adaptor = new SqlDataAdapter("select * from tbl_Upload_users where Rejected_Record ='Y'", connection);

                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                gridControl.DataSource = ds;
                gridControl.DataBind();
                connection.Close();
            }
        }


        protected void cmdCreate_Click(object sender, EventArgs e)
        {
            int value;

                      
            CreateUpdateUser();
        }

        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            UpdateUser();
        }

        public void UpdateUser()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString);

            SqlCommand cmdadd;
            cmdadd = new SqlCommand("SP_Update_User", con);
            cmdadd.CommandType = CommandType.StoredProcedure;

            cmdadd.Parameters.AddWithValue("@loginid", txtLoginID.Text);                            // @Emp_ID varchar()
            cmdadd.Parameters.AddWithValue("@FullName", txtEmpName.Text);                        //,@Emp_Name varchar()
            cmdadd.Parameters.AddWithValue("@Emailid", txtemail.Text);
            cmdadd.Parameters.AddWithValue("@AccessLevel", ddlAccessLevel.Text);
            cmdadd.Parameters.AddWithValue("@passupdate",txtpass.Text  );
            //cmdadd.Parameters.AddWithValue("@ac_bal", txtaccbal.Text);
            
            con.Open();
            cmdadd.ExecuteNonQuery();
            con.Close();

            Session["ViewState"] = null;
            this.ClientScript.RegisterStartupScript(this.GetType(), "Data saved", "<script language=\"javaScript\">"
                    + "alert('The data has been Update successfully. ');"
                    + "window.location.href='frm_ManageUser.aspx';" + "<" + "/script>");
        }



        public void CreateUpdateUser()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString);

            SqlCommand cmdadd;
            cmdadd = new SqlCommand("sp_createuser ", con);
            cmdadd.CommandType = CommandType.StoredProcedure;

            cmdadd.Parameters.AddWithValue("@login_ID", txtLoginID.Text);                            // @Emp_ID varchar()
            cmdadd.Parameters.AddWithValue("@fullname", txtEmpName.Text);                        //,@Emp_Name varchar()
            cmdadd.Parameters.AddWithValue("@password", txtpass.Text);                        //,@Emp_Name varchar()
            cmdadd.Parameters.AddWithValue("@emailid", txtemail.Text );
            cmdadd.Parameters.AddWithValue("@accesslevel", ddlAccessLevel.Text.ToString()); //,@TL varchar()
            con.Open();
            cmdadd.ExecuteNonQuery();
            con.Close();

            Session["ViewState"] = null;
            this.ClientScript.RegisterStartupScript(this.GetType(), "Data saved", "<script language=\"javaScript\">"
                    + "alert('The data has been saved successfully. ');"
                    + "window.location.href='frm_ManageUser.aspx';" + "<" + "/script>");
        }

        //public string UploadFileToServer()
        //{
        //    if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
        //    {
        //        string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
        //        string SaveLocation = Server.MapPath("Template") + "\\" + fn;

        //        SaveLocation = ConfigurationManager.AppSettings["UserUploadPath"] + "\\" + fn; ; 


        //        try
        //        {
        //            FileUpload1.PostedFile.SaveAs(SaveLocation);
        //            lblUploadStatus.Text="The file has been uploaded.";
        //            return (SaveLocation);
        //        }
        //        catch (Exception ex)
        //        {
        //            lblUploadStatus.Text = "Error: " + ex.Message;
        //            //Note: Exception.Message returns a detailed message that describes the current exception. 
        //            //For security reasons, we do not recommend that you return Exception.Message to end users in 
        //            //production environments. It would be better to put a generic error message. 
        //            return ("");
        //        }
        //    }
        //    else
        //    {
        //        lblUploadStatus.Text = "Please select a file to upload.";
        //        return ("");
        //    }
        //}

        protected void cmdReset_Click(object sender, EventArgs e)
        {
            try
            {
                lblResetPwd.Visible = true;
                lblResetPwd.Text =GetReset();
     
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public string GetReset()
        {
           string  ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(ConnectionString);

            SqlCommand Command = new SqlCommand("SP_ResetPassword", con);

            Command.CommandType = CommandType.StoredProcedure;

            Command.Parameters.Add(new SqlParameter("@LoginID", SqlDbType.VarChar, 100));
            Command.Parameters[0].Value = txtLoginID.Text;

            Command.Parameters.Add(new SqlParameter("@NewPassword", SqlDbType.VarChar, 100));
            Command.Parameters[1].Direction = ParameterDirection.Output;

            //Command.Parameters.AddWithValue("@LoginId", txtLoginID.Text);                                     //@LOGINID
            //Command.Parameters.AddWithValue("@NewPassword", (string)Session["ProcessName"]);
            //Command.Parameters[1].Direction = ParameterDirection.Output;

            con.Open();

            Command.ExecuteNonQuery();

            con.Close();

            string dtGetUserUploadError = Convert.ToString(Command.Parameters[1].Value);
            return dtGetUserUploadError;

        }


        public void DeleteUser()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString);

            SqlCommand cmdadd;
            cmdadd = new SqlCommand("SP_DeleteUser", con);
            cmdadd.CommandType = CommandType.StoredProcedure;

            cmdadd.Parameters.AddWithValue("@LoginId", txtLoginID.Text);                                     //@LOGINID
            cmdadd.Parameters.AddWithValue("@CreationBy", " ");                    //,@CreationBy varchar(200)
            cmdadd.Parameters.AddWithValue("@OUTPUT", ParameterDirection.Output);                    //,@OUTPUT varchar(200)                  
           
            con.Open();
            cmdadd.ExecuteNonQuery();
            con.Close();

            Session["ViewState"] = null;
            this.ClientScript.RegisterStartupScript(this.GetType(), "Deleted ", "<script language=\"javaScript\">"
                    + "alert('The data has been Deleted successfully. ');"
                    + "window.location.href='frm_ManageUser.aspx';" + "<" + "/script>");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            try
            {
                DeleteUser();
            }
            catch (Exception ex)
            {
            }
 
        }




          
    }
}
