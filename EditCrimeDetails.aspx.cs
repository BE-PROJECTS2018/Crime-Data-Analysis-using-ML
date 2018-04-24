using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SmartSystems_NS
{
    public partial class EditCrimeDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }

        }
        private void bindDetailtView(string Caseno)
        {
                using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
                {
                   SqlDataAdapter adaptor = new SqlDataAdapter("Select  [CaseNo],[CaseName],[FIR],[Cr_Name],[Cr_Age],[Cr_Gender],[Cr_region],[Cr_Education],[Cr_Intensity],[Cr_Details],[Cr_Type] ,[Cr_year],[Cr_Mobile],[Cr_Bloodgroup],[Cr_Email],[Cr_City],[Cr_Religion],[Cr_Habits],[Cr_Family],[CR_Height],[Cr_weight],[Cr_SkinColor],[Cr_Offname],[Cr_PS],[Cr_Date],[Cr_Motive],[CR_method],[Cr_Mo],[Cr_status],[Cr_Hospital],[Cr_Doctor],[Cr_Injury],[Cr_PastHistory],[Cr_RecordedDate]      from tbl_crimedetails where caseno='" + Caseno + "'  ", connection);
                    DataSet ds = new DataSet();
                adaptor.Fill(ds);
                DetailsView1.DataSource = ds;
                DetailsView1.DataBind();
                connection.Close();
                }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Caseno = txtcase_no.Text.ToString();
            bindDetailtView(Caseno);
        }

        void DetailsView1_ItemUpdated(Object sender, DetailsViewUpdatedEventArgs e)
        {
            DetailsView1.DataBind();
        }
        protected void DetailsView1_ModeChanging1(object sender, DetailsViewModeEventArgs e)
        {
            DetailsView1.ChangeMode(e.NewMode);
        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            
            //TextBox txtCaseNo = (TextBox)DetailsView1.FindControl("TextBox1");
            TextBox txtCaseName = (TextBox)DetailsView1.FindControl("TextBox1");
            TextBox txtFIR = (TextBox)DetailsView1.FindControl("TextBox2");
            TextBox txtCr_Name = (TextBox)DetailsView1.FindControl("TextBox3");
            TextBox txtCr_Age = (TextBox)DetailsView1.FindControl("TextBox4");
            TextBox txtCr_Gender = (TextBox)DetailsView1.FindControl("TextBox5");
            TextBox txtCr_region = (TextBox)DetailsView1.FindControl("TextBox6");
            TextBox txtCr_Education = (TextBox)DetailsView1.FindControl("TextBox7");
            TextBox txtCr_Intensity = (TextBox)DetailsView1.FindControl("TextBox8");
            TextBox txtCr_Details = (TextBox)DetailsView1.FindControl("TextBox9");
            TextBox txtCr_Type = (TextBox)DetailsView1.FindControl("TextBox10");
            TextBox txtCr_year = (TextBox)DetailsView1.FindControl("TextBox11");
            TextBox txtCr_Mobile = (TextBox)DetailsView1.FindControl("TextBox12");
            TextBox txtCr_Bloodgroup = (TextBox)DetailsView1.FindControl("TextBox13");
            TextBox txtCr_Email = (TextBox)DetailsView1.FindControl("TextBox14");
            TextBox txtCr_City = (TextBox)DetailsView1.FindControl("TextBox15");
            TextBox txtCr_Religion = (TextBox)DetailsView1.FindControl("TextBox16");
            TextBox txtCr_Habits = (TextBox)DetailsView1.FindControl("TextBox17");
            TextBox txtCr_Family = (TextBox)DetailsView1.FindControl("TextBox18");
            TextBox txtCR_Height = (TextBox)DetailsView1.FindControl("TextBox19");
            TextBox txtCr_weight = (TextBox)DetailsView1.FindControl("TextBox20");
            TextBox txtCr_SkinColor = (TextBox)DetailsView1.FindControl("TextBox21");
            TextBox txtCr_Offname = (TextBox)DetailsView1.FindControl("TextBox22");
            TextBox txtCr_PS = (TextBox)DetailsView1.FindControl("TextBox23");
            TextBox txtCr_Date = (TextBox)DetailsView1.FindControl("TextBox24");
            TextBox txtCr_Motive = (TextBox)DetailsView1.FindControl("TextBox25");
            TextBox txtCR_method = (TextBox)DetailsView1.FindControl("TextBox26");
            TextBox txtCr_Mo = (TextBox)DetailsView1.FindControl("TextBox27");
            TextBox txtCr_status = (TextBox)DetailsView1.FindControl("TextBox28");
            TextBox txtCr_Hospital = (TextBox)DetailsView1.FindControl("TextBox29");
            TextBox txtCr_Doctor = (TextBox)DetailsView1.FindControl("TextBox30");
            TextBox txtCr_Injury = (TextBox)DetailsView1.FindControl("TextBox31");
            TextBox txtCr_PastHistory = (TextBox)DetailsView1.FindControl("TextBox32");
            TextBox txtCr_CaseNo = (TextBox)DetailsView1.FindControl("TextBox33");
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database_ConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_Crimedetails ", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                //string caseno = DetailsView1.DataKey["CaseNo"].ToString();
                cmd.Parameters.AddWithValue("@CaseNo", txtCr_CaseNo.Text);
                cmd.Parameters.AddWithValue("@CaseName", txtCaseName.Text);
                cmd.Parameters.AddWithValue("@FIR", txtFIR.Text);
                cmd.Parameters.AddWithValue("@Cr_Name", txtCr_Name.Text);
                cmd.Parameters.AddWithValue("@Cr_Age", txtCr_Age.Text);
                cmd.Parameters.AddWithValue("@Cr_Gender", txtCr_Gender.Text); 
                cmd.Parameters.AddWithValue("@Cr_region", txtCr_region.Text); 
                cmd.Parameters.AddWithValue("@Cr_Education", txtCr_Education.Text); 
                cmd.Parameters.AddWithValue("@Cr_Intensity", txtCr_Intensity.Text); 
                cmd.Parameters.AddWithValue("@Cr_Details", txtCr_Details.Text); 
                cmd.Parameters.AddWithValue("@Cr_Type", txtCr_Type.Text); 
                cmd.Parameters.AddWithValue("@Cr_Mobile", txtCr_Mobile.Text); 
                cmd.Parameters.AddWithValue("@Cr_Bloodgroup", txtCr_Bloodgroup.Text); 
                cmd.Parameters.AddWithValue("@Cr_Email", txtCr_Email.Text); 
                cmd.Parameters.AddWithValue("@Cr_City", txtCr_City.Text); 
                cmd.Parameters.AddWithValue("@Cr_Religion", txtCr_Religion.Text); 
                cmd.Parameters.AddWithValue("@Cr_Habits", txtCr_Habits.Text); 
                cmd.Parameters.AddWithValue("@Cr_Family", txtCr_Family.Text); 
                cmd.Parameters.AddWithValue("@CR_Height", txtCR_Height.Text); 
                cmd.Parameters.AddWithValue("@Cr_weight", txtCr_weight.Text); 
                cmd.Parameters.AddWithValue("@Cr_SkinColor", txtCr_SkinColor.Text); 
                cmd.Parameters.AddWithValue("@Cr_Offname", txtCr_Offname.Text); 
                cmd.Parameters.AddWithValue("@Cr_PS", txtCr_PS.Text); 
                cmd.Parameters.AddWithValue("@Cr_Date", txtCr_Date.Text); 
                cmd.Parameters.AddWithValue("@Cr_Motive", txtCr_Motive.Text); 
                cmd.Parameters.AddWithValue("@CR_method", txtCR_method.Text); 
                cmd.Parameters.AddWithValue("@Cr_Mo", txtCr_Mo.Text); 
                cmd.Parameters.AddWithValue("@Cr_status", txtCr_status.Text); 
                cmd.Parameters.AddWithValue("@Cr_Hospital", txtCr_Hospital.Text); 
                cmd.Parameters.AddWithValue("@Cr_Doctor", txtCr_Doctor.Text); 
                cmd.Parameters.AddWithValue("@Cr_Injury", txtCr_Injury.Text); 
                cmd.Parameters.AddWithValue("@Cr_PastHistory", txtCr_PastHistory.Text);
                connection.Open();
                cmd.ExecuteNonQuery();
                //bindDetailtView(DetailsView1.DataKey["CaseNo"].ToString());
                this.ClientScript.RegisterStartupScript(this.GetType(), "Data updated.", "<script language=\"javaScript\">"
                   + "alert('Data Updated successfully. ');" + "/script>");
            }

        }

        }
}