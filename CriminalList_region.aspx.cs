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
    public partial class CriminalList_region : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
         
      

                DataTable dt = new DataTable();

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
                {

                    con.Open();

                    SqlCommand cmd = new SqlCommand("select Cr_region,Count(Cr_region) as Region_Count from tbl_crimedetails group by Cr_region   ", con);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);

                    da.Fill(dt);

                    con.Close();

                }

                string[] x = new string[dt.Rows.Count];

                int[] y = new int[dt.Rows.Count];

                for (int i = 0; i < dt.Rows.Count; i++)
                {

                    x[i] = dt.Rows[i][0].ToString();

                    y[i] = Convert.ToInt32(dt.Rows[i][1]);

                }

                Chart1.Series[0].Points.DataBindXY(x, y);
                bindgridnew();
                bindgridSummarynew();

    



        }

        protected void bindgridnew()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
            {
                string sortDirection, sortExpression;
                sortDirection = "DESC";
                SqlDataAdapter adaptor = new SqlDataAdapter("sp_CrimeReport 3", connection);

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
        protected void bindgridSummarynew()
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
            {

                SqlDataAdapter adaptor = new SqlDataAdapter("select Cr_region as'Region',Count(Cr_Type) as 'Crimne Count' ,Cr_Type as 'Crime Type' from tbl_crimedetails  group by Cr_Type , Cr_region,Cr_Type Order by Cr_region", connection);

                DataSet ds = new DataSet();

                adaptor.Fill(ds);

                GridView2.DataSource = ds;
                GridView2.DataBind();
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
            bindgridnew();
        }
    }
}
