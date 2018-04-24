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
    public partial class UploadCrime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdValidate_Click(object sender, EventArgs e)
        {
            string filepath;
            filepath = UploadFileToServer();
            if (filepath != "")
            {
                Loader.Control_Binder.importDataFromExcel(filepath,"");
                BindGrid(GridView1);
            }
        }

        public string UploadFileToServer()
        {
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("Template") + "\\" + fn;

                //SaveLocation = ConfigurationManager.AppSettings["UserUploadPath"] + "\\" + fn; ;


                try
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation);
                    lblUploadStatus.Text = "The file has been uploaded.";
                    return (SaveLocation);
                }
                catch (Exception ex)
                {
                    lblUploadStatus.Text = "Error: " + ex.Message;
                    //Note: Exception.Message returns a detailed message that describes the current exception. 
                    //For security reasons, we do not recommend that you return Exception.Message to end users in 
                    //production environments. It would be better to put a generic error message. 
                    return ("");
                }
            }
            else
            {
                lblUploadStatus.Text = "Please select a file to upload.";
                return ("");
            }
        }

        private void BindGrid(GridView gridControl)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
            {

                SqlDataAdapter adaptor = new SqlDataAdapter("select  [Cr_Name] as 'Name',[Cr_Age] as 'Age',[Cr_Gender] as 'Gender',[Cr_region] as 'Region',[Cr_Education] as 'Education',[Cr_Intensity] as 'Crime Intensity',[Cr_Details] as 'Crime Details', [Cr_Type] as 'Crime type' ,[Cr_year] as 'Year' from tbl_crimedetails ", connection);//where Rejected_Record ='Y'

                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                gridControl.DataSource = ds;
                gridControl.DataBind();
                connection.Close();
            }
        }
    }
}
