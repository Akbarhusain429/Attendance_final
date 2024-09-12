using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Attendance_final.Staff
{
    public partial class stf_studreport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            int rollno = 0;
            string year = txtyear.Text;
            string sem = DropDownList1.SelectedValue.ToString();
            //string tabname = sem + "_" + year;

            try { rollno = Convert.ToInt32(txtrollno.Text); }
            catch { }
            SqlCommand cmd;
            if (rollno != 0)
            {
                cmd = new SqlCommand("select stud_year,stud_grno,stud_rollno,stud_name,stud_sem,stud_gender,stud_dob,stud_address,stud_mobileno,stud_email,stud_regdate from student where stud_year = '" + year + "' AND stud_sem = '" + sem + "' AND stud_rollno = '" + rollno + "'", con);
            }
            else
            {
                cmd = new SqlCommand("select stud_year,stud_grno,stud_rollno,stud_name,stud_sem,stud_gender,stud_dob,stud_address,stud_mobileno,stud_email,stud_regdate from student where stud_year = '" + year + "' AND stud_sem = '" + sem + "'", con);
            }

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}