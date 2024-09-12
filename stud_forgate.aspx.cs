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
    public partial class forgate : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select stud_password from student where stud_email = '"+ txtforgate.Text +"'",con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                string password = dt.Rows[0]["stud_password"].ToString();
                // Response.Write("<script>alert('"+password+"')</script>");

                MailMessage mm = new MailMessage("jafariattendanace@gmail.com", txtforgate.Text);
                mm.Subject = "College Account Information";
                string body = "Your Password is '" + password + "'";
                mm.Body = body;
                // mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("jafariattendanace@gmail.com", "jafariatten");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);

                Response.Write("<script language='javascript'>alert('Your Password Has been Sent In Your Email-Id.....')</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Your Email-Id Is Wrong.....')</script>");
            }
        }
    }
}