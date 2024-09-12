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
    public partial class ad_adstf : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        string path;
        int valid = -1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                profileselectprocess();
                string name = txtname.Text;
                string email = txtemail.Text;
                string password = txtpass.Text;
                string gender = radio1.Text;
                if (radio1.Checked)
                {
                    gender = radio1.Text;
                }
                else if (radio2.Checked)
                {
                    gender = radio2.Text;
                }
                string dob = Convert.ToDateTime(txtdob.Text).ToString("yyyy-MM-dd");
                string address = txtadd.Text;
                string mobileno = txtmobno.Text;
                string qulification = txtquli.Text;
                string date = System.DateTime.Now.ToString("yyyy-MM-dd");

                SqlCommand cmd = new SqlCommand("insert into staff (stf_name,stf_email,stf_password,stf_gender,stf_dob,stf_address,stf_mobileno,stf_qualification,stf_image,stf_regdate) values('" + name + "', '" + email + "','" + password + "','" + gender + "','" + dob + "','" + address + "','" + mobileno + "','" + qulification + "','" + path + "','" + date + "')", con);

                con.Open();
                valid = cmd.ExecuteNonQuery();
                con.Close();

                if (valid == 1)
                {
                    Response.Write("<script>alert('Staff Record Inserted.....')</script>");
                    //Response.Redirect("ad_addstud.aspx");
                    txtadd.Text = txtdob.Text = txtname.Text = txtmobno.Text = txtemail.Text = txtquli.Text = "";

                    MailMessage mm = new MailMessage("jafariattendanace@gmail.com", email);
                    mm.Subject = "College Account Information";
                    string body = "Your Username is '" + email + "' & Password is '" + txtpass.Text + "'";
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
                }
                else
                {
                    Response.Write("<script>alert('Staff Record Not Inserted!!!!!')</script>");
                }
            }
        }

        protected void profileselectprocess()
        {
            string imagename = stfimg.PostedFile.FileName;
            string imageext = Path.GetExtension(stfimg.PostedFile.FileName);
            string date = System.DateTime.Now.ToString("yyyy_MM_dd_HH_mm_ss");
            path = "~/Staff/Photos/Stf_" + txtname.Text + imageext + "";

            if (imageext == ".jpg" || imageext == ".jpeg" || imageext == ".png")
            {
                stfimg.SaveAs(Server.MapPath(path));
            }
            else
            {
                Response.Write("<script>alert('Pleas Select Only Image File With Extension jpg, jpeg, png, Your Selecter Item is " + imageext + "')</script>");
            }
        }
    }
}