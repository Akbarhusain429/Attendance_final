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

namespace Attendance_final.Admin
{
    public partial class admin_add : System.Web.UI.Page
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
                string username = txtuser.Text;
                string password = txtpass.Text;
                string date = System.DateTime.Now.ToString("yyyy-MM-dd");

                SqlCommand cmd = new SqlCommand("insert into admin (ad_name,ad_username,ad_password,ad_image,ad_regdate) values ('" + name + "','" + username + "','" + password + "','" + path + "','" + date + "')", con);

                con.Open();
                valid = cmd.ExecuteNonQuery();
                con.Close();

                if (valid == 1)
                {
                    Response.Write("<script>alert('Admin Record Inserted.....')</script>");
                    //Response.Redirect("ad_addstud.aspx");
                    txtname.Text = txtuser.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Admin Record Not Inserted!!!!!')</script>");
                }
            }
        }

        protected void profileselectprocess()
        {
            string imagename = adimg.PostedFile.FileName;
            string imageext = Path.GetExtension(adimg.PostedFile.FileName);
            string date = System.DateTime.Now.ToString("yyyy_MM_dd_HH_mm_ss");
            path = "~/Admin/Photos/admin_" + txtuser.Text + imageext + "";

            if (imageext == ".jpg" || imageext == ".jpeg" || imageext == ".png")
            {
                adimg.SaveAs(Server.MapPath(path));
            }
            else
            {
                Response.Write("<script>alert('Pleas Select Only Image File With Extension jpg, jpeg, png, Your Selecter Item is " + imageext + "')</script>");
            }
        }
    }
}