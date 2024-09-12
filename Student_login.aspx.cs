using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Attendance_final
{
    public partial class Student_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select stud_grno,stud_rollno,stud_image from student where  stud_email= '" + txtuser.Text + "' AND stud_password= '" + txtpass.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();                        
            da.Fill(dt);

            
            if (dt.Rows.Count > 0)
            {
                int studgrno = Convert.ToInt32(dt.Rows[0]["stud_grno"]);
                string studimg = dt.Rows[0]["stud_image"].ToString();

                Session["studgrno"] = studgrno;
                Session["studimg"] = studimg;
                Response.Write("<script language='javascript'>alert('" + studgrno + " " + Session["studgrno"] + "')</script>");
                Response.Redirect("~/Studdent/stud_home.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
        }
    }
}