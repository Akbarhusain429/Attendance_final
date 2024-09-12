using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Attendance_final.Admin
{
    public partial class ad_stfrpt : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlCommand cmd = new SqlCommand("select stf_name,stf_email,stf_gender,stf_dob,stf_address,stf_mobileno,stf_qualification,stf_regdate from staff ",con);
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();

            //con.Open();
            //cmd.ExecuteNonQuery();
            //sda.Fill(ds);
            //con.Close();

            //GridView1.DataSource = ds;
            //GridView1.DataBind();

          
            if (!IsPostBack)
            {
                BindRepeater();
            }
        }

        private void BindRepeater()
        {
            using (SqlCommand cmd = new SqlCommand("SELECT  stf_id,stf_name,stf_email,stf_gender,stf_dob,stf_address,stf_mobileno,stf_qualification,stf_regdate FROM staff", conn))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptImages.DataSource = dt;
                    rptImages.DataBind();
                }
            }
        }


        protected void rptImages_ItemCommand(object sender, EventArgs e)
        {

            int avid = int.Parse(((sender as ImageButton).NamingContainer.FindControl("lblAvid") as Label).Text);
            string constr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM staff WHERE stf_id = " + avid, con))
                {

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            BindRepeater();
            Response.Write("<script>alert('Media Deleted Successufully..')</script>");
        }
    }
}