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
    public partial class stf_attendance : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        string sem;
        int valid = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            sem = DropDownList1.SelectedValue.ToString();
        }
        
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            sem = DropDownList1.SelectedValue.ToString();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select stud_rollno,stud_grno,stud_name,stud_sem from student where stud_sem='" + sem + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new  DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            //Response.Write("<script>alert('" + sem + "')</script>");

            
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            //string sem = DropDownList1.SelectedValue.ToString();
            string lecture = txtlecture.Text;
            string date = Convert.ToDateTime(txtdate.Text).ToString("yyyy-MM-dd");
            string tabname = sem + "_" + txtyear.Text;
            int stfid = Convert.ToInt32(Session["stfid"]);

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[4].FindControl("CheckBox1") as CheckBox);
                int rollno = Convert.ToInt32(row.Cells[1].Text);
                int grno = Convert.ToInt32(row.Cells[0].Text);
                //Response.Write("<script>alert('Record Inserted.....')</script>");
                if (status.Checked)
                {
                    SqlCommand cmd2 = new SqlCommand("insert into " + tabname + " (atten_date, atten_lecture, stud_grno, stud_rollno, status,stf_id) values ('" + date + "','" + lecture + "','" + grno + "','" + rollno + "','P','" + stfid + "')", con);
                    con.Open();
                    valid = cmd2.ExecuteNonQuery();
                    con.Close();
                }
                else
                {
                    SqlCommand cmd3 = new SqlCommand("insert into " + tabname + " (atten_date, atten_lecture, stud_grno, stud_rollno, status,stf_id) values ('" + date + "','" + lecture + "','" + grno + "','" + rollno + "','A','"+ stfid +"')", con);
                    con.Open();
                    valid = cmd3.ExecuteNonQuery();
                    con.Close();
                }
            }

            //SqlCommand cmd2 = new SqlCommand("insert into " + tabname + " (atten_date, atten_lecture) values ('" + date + "','" + lecture + "')", con);

            //con.Open();
            //valid = cmd2.ExecuteNonQuery();
            //con.Close();

            if (valid == 1)
            {
                Response.Write("<script>alert('Record Inserted.....')</script>");
            }
            else
            {
                Response.Write("<script>alert('Record "+tabname+" Not Inserted.....')</script>");
            } 
        }
    }
}