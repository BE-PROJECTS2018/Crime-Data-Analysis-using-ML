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
    public partial class CriminalList_Gender : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {



                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("select cr_gender,Count(cr_gender) as Gender_Count,Cr_year from tbl_crimedetails where cr_gender='Female'group by Cr_year , Cr_Gender ", con);
                da.Fill(ds);
                Chart1.DataSource = ds;
                DataSet ds2 = new DataSet();
                SqlDataAdapter da2 = new SqlDataAdapter("select cr_gender,Count(cr_gender) as Gender_Count,Cr_year from tbl_crimedetails where cr_gender='male'group by Cr_year , Cr_Gender ", con);
                da2.Fill(ds2);
                Chart2.DataSource = ds2;
                bindgrid();
                bindgridsummary();
            
        }
        protected void bindgridsummary()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
            {

                SqlDataAdapter adaptor = new SqlDataAdapter("select cr_gender as'Gender',Cr_Type as 'Crime Type',Count(Cr_Type) as 'Crimne Count' from tbl_crimedetails  group by Cr_Type , cr_gender,Cr_Type Order by cr_gender", connection);

                DataSet ds = new DataSet();

                adaptor.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }
        }
        protected void bindgrid()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
            {
                string sortDirection, sortExpression;
                sortDirection = "DESC";
                SqlDataAdapter adaptor = new SqlDataAdapter("sp_CrimeReport 2", connection);

                DataSet ds = new DataSet();

                adaptor.Fill(ds);
               DataView dv = ds.Tables[0].DefaultView;
                if (ViewState["SortDirection"] != null)
                {
                    sortDirection = ViewState["SortDirection"].ToString();
                }
                if (ViewState["SortExpression"] != null)
                {
                    sortExpression = ViewState["SortExpression"].ToString();
                    dv.Sort = string.Concat(sortExpression, " ", sortDirection);
                }
                GridView1.DataSource = dv;
                GridView1.DataBind();
                connection.Close();
            }
        }
        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            if (ViewState["SortDirection"] == null || ViewState["SortExpression"].ToString() != e.SortExpression)
            {
                ViewState["SortDirection"] = "ASC";
                GridView1.PageIndex = 0;
            }
            else if (ViewState["SortDirection"].ToString() == "ASC")
            {
                ViewState["SortDirection"] = "DESC";
            }

            else if (ViewState["SortDirection"].ToString() == "DESC")
            {
                ViewState["SortDirection"] = "ASC";
            }
            ViewState["SortExpression"] = e.SortExpression;
            bindgrid();
        }
    }
}
