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
    public partial class Add_Crime : System.Web.UI.Page
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
            string b_casename, b_caseno, b_fir;
            string b_name, b_age, b_edu, b_gen,  b_cc, b_cd, b_ctype, b_region,b_city,b_ci;
            string b_mobile, b_bg, b_email,  b_rel, b_habits, b_family,b_height,b_wt,b_skin;
            string b_offname, b_ps, b_crdate, b_crmotive, b_method, b_mo, b_status, b_hospital, b_doc, b_injury, b_past;

            b_casename=txtcaseno.Text.ToString();
            b_caseno = txtcaseno.Text.ToString();
            b_fir = txtfir.Text.ToString();

            b_name = txtname.Text.ToString();
            b_age = TextBox1.Text.ToString();
            b_edu = DropDownList5.Text.ToString();
            b_city=txtcity.Text.ToString();
            //b_cc=txtcc.Text.ToString();
            b_cd=txtcd.Text.ToString();
            b_gen=DropDownList1.Text.ToString();
            b_region=DropDownList2.Text.ToString();
            b_ci=DropDownList3.Text.ToString();
            b_ctype=DropDownList4.Text.ToString();

            b_mobile = txtmobile.Text.ToString();
            b_bg = ddlbg.Text.ToString();
            b_email = txtemail.Text.ToString();
            
            b_rel = ddlreligion.Text.ToString();
            b_habits = txthabits.Text.ToString();
            b_family = txtfamily.Text.ToString();
            b_height = txtheight.Text.ToString();
            b_wt = txtwt.Text.ToString();
            b_skin = txtskincolor.Text.ToString();

            b_offname=txtoffname.Text.ToString();
            b_ps =txtpsname.Text.ToString();
            b_crdate =txtcdate.Text.ToString();
            b_crmotive = ddlcmo.Text.ToString();
            b_method = ddlmethod.Text.ToString();
            b_mo = ddlmo.Text.ToString();
            b_status = ddlcs.Text.ToString();
            b_hospital = txtHN.Text.ToString();
            b_doc = txtdn.Text.ToString();
            b_injury=txtinjury.Text.ToString();
            b_past = txtph.Text.ToString();

            string ConnectionString = ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString;
            string strSQL;
            strSQL = "sp_InsertCrimedetails '" + b_caseno + "','" + b_casename + "','" + b_fir + "','" + b_name + "','" + b_age + "','" + b_gen + "','" + b_region + "','" + b_edu + "','" + b_ci + "','" + b_cd + "','" + b_ctype + "','" + b_mobile + "','" + b_bg + "','" + b_email + "','" + b_city + "','" + b_rel + "','" + b_habits + "','" + b_family + "','" + b_height + "','" + b_wt + "','" + b_skin + "','" + b_offname + "','" + b_ps + "','" + b_crdate + "','" + b_crmotive + "','" + b_method + "','" + b_mo + "','" + b_status + "','" + b_hospital + "','" + b_doc + "','" + b_injury + "','" + b_past + "' ";
            //Response.Write(strSQL);
            //Response.End();
           
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.ExecuteNonQuery();
            Session["ViewState"] = null;
            this.ClientScript.RegisterStartupScript(this.GetType(), "Crime updated.", "<script language=\"javaScript\">"
                    + "alert('Crime details saved successfully. ');"
                    + "window.location.href='frm_Welcome.aspx';" + "<" + "/script>");
        }
    }
}
