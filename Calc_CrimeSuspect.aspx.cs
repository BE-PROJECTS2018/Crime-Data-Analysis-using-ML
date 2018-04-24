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
    public partial class Calc_CrimeSuspect : System.Web.UI.Page
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
            //Session["Age"] = TextBox1.Text.ToString();
            //Session["Gender"]=DropDownList1.Text.ToString();
            //Session["Region"] = DropDownList2.Text.ToString();
            //Session["Edu"]=DropDownList5.Text.ToString();
            //Session["CrimeInt"] = DropDownList3.Text.ToString();
            //Session["CrimeTyp"] = DropDownList4.Text.ToString();
            string age, gender, edu, region, ci, ct;
            age = TextBox1.Text.ToString();
            gender = DropDownList1.Text.ToString();
            region  = DropDownList2.Text.ToString();
            edu = DropDownList5.Text.ToString();
            ci = DropDownList3.Text.ToString();
            ct = DropDownList4.Text.ToString();

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
            {

                SqlDataAdapter adaptor = new SqlDataAdapter("sp_CI_Algorithm "+age+",'"+gender+"','"+ region +"','"+edu  +"','"+ ci+"','"+ct+"'", connection);

                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                DataTable dt = new DataTable();
                adaptor.Fill(dt);
                string[] x = new string[dt.Rows.Count];

                int[] y = new int[dt.Rows.Count];

                for (int i = 0; i < dt.Rows.Count; i++)
                {

                    x[i] = dt.Rows[i][0].ToString();

                    y[i] = Convert.ToInt32(dt.Rows[i][1]);

                }

                Chart1.Series[0].Points.DataBindXY(x, y);

                connection.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
