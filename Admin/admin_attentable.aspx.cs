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
    public partial class admin_attentable : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            string year = txtyear.Text;
            string tabname;
            for (int i = 1; i <= 6; i++)
            {
                tabname = "sem" + i + "_" + year;
                SqlCommand cmd = new SqlCommand("CREATE TABLE " + tabname + " (atten_id numeric(5,0) , atten_date date, atten_lecture varchar(30), stf_id int references staff, stud_grno numeric(6, 0) references student, stud_rollno int, status varchar(1))", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            Response.Write("<script>alert('Table Created.....')</script>");
        }
    }
}