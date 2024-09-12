using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Attendance_final.Studdent
{
    public partial class stud_complain : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        int valid = -1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string about = txtabout.Text;
                string message = txtmsg.Text;
                string date = System.DateTime.Now.ToString("yyyy-MM-dd");

                SqlCommand cmd = new SqlCommand("insert into complain (complain_about,complain_msg,reg_date) values ('"+ about+"','"+ message +"','" + date + "')", con);

                con.Open();
                valid = cmd.ExecuteNonQuery();
                con.Close();

                if (valid == 1)
                {
                    Response.Write("<script>alert('Record Inserted.....')</script>");
                    //Response.Redirect("ad_addstud.aspx");
                    txtabout.Text = txtmsg.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Student Record Not Inserted!!!!!')</script>");
                }
            }
        }
    }
}