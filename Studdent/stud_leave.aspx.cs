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
    public partial class stud_leave : System.Web.UI.Page
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
                string reason = txtreason.Text;
                string noday = DropDownList1.SelectedValue.ToString();
                string date = System.DateTime.Now.ToString("yyyy-MM-dd");

                int studgrno = Convert.ToInt32(Session["studgrno"]);

                SqlCommand cmd = new SqlCommand("insert into Leave (leave_reason,leave_noday,stud_grno,reg_date) values ('" + reason + "','" + noday + "','" + studgrno + "','" + date + "')", con);

                con.Open();
                valid = cmd.ExecuteNonQuery();
                con.Close();

                if (valid == 1)
                {
                    Response.Write("<script>alert('Leave Record Inserted.....')</script>");
                    //Response.Redirect("ad_addstud.aspx");
                    txtreason.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Leave Record Not Inserted!!!!!')</script>");
                }
            }
        }
    }
}