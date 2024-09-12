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

namespace Attendance_final
{
    public partial class staff_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select stf_id,stf_image from staff where  stf_email= '" + txtuser.Text + "' AND stf_password= '" + txtpass.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();            
            da.Fill(dt);

           
            
            if (dt.Rows.Count > 0)
            {
                int stfid = Convert.ToInt32(dt.Rows[0]["stf_id"]);
                string stfimg = dt.Rows[0]["stf_image"].ToString();

                Session["stfid"] = stfid;
                Session["stfimg"] = stfimg;
                Response.Write("<script language='javascript'>alert('"+ stfid +" "+ Session["stfid"] +"')</script>");
                Response.Redirect("~/Staff/stf_home.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
        }

        //protected void LinkButton1_Click(object sender, EventArgs e)
        //{

        //}
    }
}