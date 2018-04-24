using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace SmartSystems_NS
{
    public partial class AddEvidance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {


            }

        }
        protected void UploadFile(object sender, EventArgs e)

        {
            string caseno = TextBox1.Text.ToString();
            string Evddetails = TextBox2.Text.ToString();
            string strsql;
            string fileName = caseno+"_"+Path.GetFileName(FileUpload1.PostedFile.FileName);

            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + fileName);

            strsql = "Insert into [tbl_EvidanceFiles] values ('" + caseno + "','" + fileName + "','" + Evddetails + "' )  ";
            string ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand(strsql, conn);
            cmd.ExecuteNonQuery();
            Session["ViewState"] = null;
            this.ClientScript.RegisterStartupScript(this.GetType(), "Evidance updated.", "<script language=\"javaScript\">" + "alert('Evidance attached successfully. ');" + "/script>");
            //Response.Redirect(Request.Url.AbsoluteUri);
            Bindgrid(caseno);
        }
        protected void DownloadFile(object sender, EventArgs e)

        {

            string filePath = (sender as LinkButton).CommandArgument;
            filePath = Server.MapPath("~/Uploads/") + filePath;

            Response.ContentType = ContentType;

            Response.AppendHeader("Content-Disposition", "attachment; filename="+ Path.GetFileName(filePath));

            Response.WriteFile(filePath);

            Response.End();

        }
        protected void DeleteFile(object sender, EventArgs e)

        {

            //Determine the RowIndex of the Row whose Button was clicked.
            int rowIndex = ((sender as LinkButton).NamingContainer as GridViewRow).RowIndex;
            //Get the value of column from the DataKeys using the RowIndex.
            string caseno = GridView1.DataKeys[rowIndex].Values[0].ToString();
            
            string Evddetails = TextBox2.Text.ToString();
            string strsql;

            string filePath = (sender as LinkButton).CommandArgument;

            

            strsql = "Delete from [tbl_EvidanceFiles] where CaseNo='" + caseno + "' and filename='" + filePath + "' ";
            string ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand(strsql, conn);
            cmd.ExecuteNonQuery();
            Session["ViewState"] = null;
            this.ClientScript.RegisterStartupScript(this.GetType(), "Evidance updated.", "<script language=\"javaScript\">"
                    + "alert('Evidance Deleted successfully. ');" + "/script>");
            File.Delete(filePath);
            //Response.Redirect(Request.Url.AbsoluteUri);
            Bindgrid(caseno);

        }

        protected void Bindgrid(string caseno)
        {
            
            string ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            SqlDataAdapter adaptor = new SqlDataAdapter("select * from tbl_EvidanceFiles where caseno='" + caseno + "'", conn);
            DataSet ds = new DataSet();
            adaptor.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string caseno = TextBox1.Text.ToString();
            Bindgrid(caseno);
        }
    }
}