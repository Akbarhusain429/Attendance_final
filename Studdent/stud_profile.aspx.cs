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
    public partial class stud_profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        int studgrno;
        protected void Page_Load(object sender, EventArgs e)
        {
            studgrno = Convert.ToInt32(Session["studgrno"]);
            if (!IsPostBack)
            {
                getdata();

                txtadd.Enabled = false;
                txtemail.Enabled = false;
                txtmobno.Enabled = false;

                btnupdate.Text = "EDIT";
            }
            
        }

        public void getdata()
        {
            SqlCommand cmd = new SqlCommand("select stud_grno,stud_rollno,stud_name,stud_gender,stud_dob,stud_address,stud_mobileno,stud_email from student where stud_grno = '" + studgrno + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblgrno.Text = ds.Tables[0].Rows[0]["stud_grno"].ToString();
                lblrno.Text = ds.Tables[0].Rows[0]["stud_rollno"].ToString();
                lblname.Text = ds.Tables[0].Rows[0]["stud_name"].ToString();
                lblgender.Text = ds.Tables[0].Rows[0]["stud_gender"].ToString();
                lbldob.Text = ds.Tables[0].Rows[0]["stud_dob"].ToString();
                txtadd.Text = ds.Tables[0].Rows[0]["stud_address"].ToString();
                txtmobno.Text = ds.Tables[0].Rows[0]["stud_mobileno"].ToString();
                txtemail.Text = ds.Tables[0].Rows[0]["stud_email"].ToString();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (btnupdate.Text == "EDIT")
            {
                txtadd.Enabled = true;
                txtemail.Enabled = true;
                txtmobno.Enabled = true;
                
                btnupdate.Text = "UPDATE";
            }
            else if (btnupdate.Text == "UPDATE")
            {
                SqlCommand cmd = new SqlCommand("update student set stud_address='" + txtadd.Text + "',stud_mobileno='" + txtmobno.Text + "',stud_email='" + txtemail.Text + "' where stud_grno = '" + studgrno + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Record Successfully Updated.....')</script>");
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtadd.Text = txtemail.Text = txtmobno.Text = "";
            getdata();
        }
    }
}