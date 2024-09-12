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
using System.Net;
using System.Net.Mail;



namespace Attendance_final.Admin
{
    public partial class ad_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select ad_id,ad_image from admin where  ad_username= '" + txtuser.Text + "' and ad_password= '" + txtpass.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            
            if (dt.Rows.Count > 0)
            {
                int adid = Convert.ToInt32(dt.Rows[0]["ad_id"]);
                string adimg = dt.Rows[0]["ad_image"].ToString();

                Session["ad_id"] = adid;
                Session["ad_image"] = adimg;
                Response.Write("<script language='javascript'>alert('" + adid + " " + Session["ad_id"] + "')</script>");
                Response.Redirect("~/Admin/admin_profile.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
        }
    }
}