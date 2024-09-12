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
    public partial class ad_addstud : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        string path;
        int valid = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void profileselectprocess()
        {
            string imagename = studimg.PostedFile.FileName;
            string imageext = Path.GetExtension(studimg.PostedFile.FileName);
            string date = System.DateTime.Now.ToString("yyyy_MM_dd_HH_mm_ss");
            path = "~/Studdent/Photos/Stud_" + txtgrno.Text + imageext + "";

            if (imageext == ".jpg" || imageext == ".jpeg" || imageext == ".png")
            {
                studimg.SaveAs(Server.MapPath(path));
            }
            else
            {
                Response.Write("<script>alert('Pleas Select Only Image File With Extension jpg, jpeg, png, Your Selecter Item is " + imageext + "')</script>");
            }
        }

        protected void btn1_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                profileselectprocess();
                string year = txtyear.Text;
                int grno = Convert.ToInt16(txtgrno.Text);
                int rollno = Convert.ToInt16(txtrno.Text);
                string name = txtname.Text;
                string sem = DropDownList1.SelectedValue.ToString();
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
                string email = txtemail.Text;
                string password = txtpass.Text;
                string date = System.DateTime.Now.ToString("yyyy-MM-dd");

                SqlCommand cmd = new SqlCommand("insert into student (stud_year,stud_grno,stud_rollno,stud_name,stud_sem,stud_gender,stud_dob,stud_address,stud_mobileno,stud_email,stud_password,stud_image,stud_regdate) values ('"+ year +"','" + grno + "', '" + rollno + "','" + name + "','" + sem + "','" + gender + "','" + dob + "','" + address + "','" + mobileno + "','" + email + "','" + password + "','" + path + "','" + date + "')", con);

                con.Open();
                valid = cmd.ExecuteNonQuery();
                con.Close();

                if (valid == 1)
                {
                    Response.Write("<script>alert('Student Record Inserted.....')</script>");
                    //Response.Redirect("ad_addstud.aspx");
                    txtadd.Text = txtdob.Text = txtgrno.Text = txtrno.Text = txtyear.Text = txtname.Text = txtmobno.Text = txtemail.Text = "";


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
                    Response.Write("<script>alert('Student Record Not Inserted!!!!!')</script>");
                }
            }
        }

    }
}