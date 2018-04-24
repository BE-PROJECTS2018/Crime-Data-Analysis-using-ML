using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
    public partial class SearchCriminal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                filldropdownitems();
            }
        }
        protected void filldropdownitems()
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;
            DropDownList4.DataValueField = "Crime_type";
            DropDownList4.DataTextField = "Crime_type";
            string strSQL;
            strSQL = "SELECT distinct [Crime_type]  FROM [dbo].[tbl_crimetype]";
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            DropDownList4.DataTextField = "Crime_type";
            DropDownList4.DataValueField = "Crime_type";
            DropDownList4.DataSource = reader;
            DropDownList4.DataBind();
            DropDownList4.Items.Add("ALL");
            DropDownList4.Items.FindByValue("ALL").Selected = true;
            conn.Close();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string cname,age, gender, edu, region, ci, ct, cryear,caseno;
            cname = TextBox1.Text.ToString();
            age = TextBox2.Text.ToString();
            gender = DropDownList1.SelectedValue.ToString();
            region = DropDownList2.Text.ToString();
            edu = DropDownList5.Text.ToString();
            ci = DropDownList3.Text.ToString();
            ct = DropDownList4.Text.ToString();
            cryear = TextBox3.Text.ToString();
            caseno = txt_Caseno.Text.ToString();
            if (region =="Select")
                region ="";
            if(edu=="Select")
                edu ="";
            if (ci=="Select")
                ci="";
            if (ct=="ALL")
                ct = "";


            //a = "SP_Searchcrimedetails '" + cname + "','" + age + "','" + gender + "','" + region + "','" + edu + "','" + ci + "','" + ct + "','" + cryear + "'";
            //Response.Write (a);
             using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
            {

                SqlDataAdapter adaptor = new SqlDataAdapter("SP_Searchcrimedetails '" + cname+ "','" + age + "','" + gender + "','" + region + "','" + edu + "','" + ci + "','" + ct + "','"+cryear+ "','" + caseno +"'  ", connection);

                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                connection.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void OnSelectedIndexChanged(object sender, EventArgs e)

        {

            //Determine the RowIndex of the Row whose Button was clicked.
            int rowIndex = ((sender as LinkButton).NamingContainer as GridViewRow).RowIndex;
            //Get the value of column from the DataKeys using the RowIndex.
            string caseno = GridView1.DataKeys[rowIndex].Values[0].ToString();
            Response.Write(caseno);
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
            {

                SqlDataAdapter adaptor = new SqlDataAdapter("sp_ViewCriminalDetails '" + caseno + "'", connection);
                DataSet ds = new DataSet();
                adaptor.Fill(ds);
                DetailsView1.DataSource = ds;
                DetailsView1.DataBind();
                
                connection.Close();
            }


        }
    }
}
