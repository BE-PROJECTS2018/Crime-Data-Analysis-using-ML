using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using Telerik.Web.UI;


namespace My_Application
{
    public partial class frm_Report : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                Loader.Control_Binder.SQL_ManageUser_Manager(ddlManager, "");
                Loader.Control_Binder.SQL_ManageUser_TL(ddlTL, "");

                ddlTL.Items.Insert(0, new RadComboBoxItem(""));
                ddlManager.Items.Insert(0, new RadComboBoxItem(""));

                dtpFrom.SelectedDate = DateTime.Now; //.ToString().ToString(); 
                dtpTo.SelectedDate = DateTime.Now; //.ToString().ToString(); 


            }
        }

        private void BindGrid(GridView gridControl,string query)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString)) 

            {

                SqlDataAdapter adaptor = new SqlDataAdapter(query, connection);

                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                gridControl.DataSource = ds;
                gridControl.DataBind();
            }
        }

        private void Export_Excel()
        {
            GridView1.AllowPaging = false;
            BindGrid(GridView1,formulateQuery());

            Context.Response.ClearContent();
            Context.Response.ContentType = "application/ms-excel";
            Context.Response.AddHeader("content-disposition", string.Format("attachment;filename={0}.xls", "ExcelFileName"));
            Context.Response.Charset = "";
            System.IO.StringWriter stringwriter = new System.IO.StringWriter();
            HtmlTextWriter htmlwriter = new HtmlTextWriter(stringwriter);
            GridView1.RenderControl(htmlwriter);
            Context.Response.Write(stringwriter.ToString());
            Context.Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }

        protected void btnExport_Click1(object sender, EventArgs e)
        {
            Export_Excel();
        }

        protected void cmdGenerate_Click(object sender, EventArgs e)
        {
            string query = formulateQuery();
            BindGrid(GridView1,query);

        }

        private string formulateQuery()
        {
            string query = "'" + dtpFrom.SelectedDate.Value.ToString("dd/MMM/yyyy") + "','" + dtpTo.SelectedDate.Value.ToString("dd/MMM/yyyy") + "'";
            query = query + ",'" + ddlManager.Text + "','" + ddlTL.Text + "'";

            if (ddlProcess.SelectedValue == "sp_Report_SYSGeneratePassword")
            {
                query = query + ",'" + Session["Emp_ID"].ToString() + "'";
                query = ddlProcess.SelectedValue + " " + query;
            }
            else
            {
                query = ddlProcess.SelectedValue + " " + query;
            }
            return(query);

        }

        public void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridView1.PageIndex = e.NewPageIndex;
            string query = formulateQuery();
            BindGrid(GridView1, query);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = formulateQuery();
            Label2.Text = a;
        } 

    }
}
