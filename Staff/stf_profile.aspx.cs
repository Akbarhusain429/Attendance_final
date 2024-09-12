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
    public partial class stf_profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        int staffid;
        protected void Page_Load(object sender, EventArgs e)
        {
            staffid = Convert.ToInt32(Session["stfid"]);
            if (!IsPostBack)
            {
                getdata();

                txtadd.Enabled = false;
                txtemail.Enabled = false;
                txtmobno.Enabled = false;
                txtquli.Enabled = false;

                btnupdate.Text = "EDIT";

            }

            
        }
        public void getdata()
        {
            SqlCommand cmd = new SqlCommand("select stf_name,stf_email,stf_gender,stf_dob,stf_address,stf_mobileno,stf_qualification from staff where stf_id = '" + staffid + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblname.Text = ds.Tables[0].Rows[0]["stf_name"].ToString();
                lblgender.Text = ds.Tables[0].Rows[0]["stf_gender"].ToString();
                lbldob.Text = ds.Tables[0].Rows[0]["stf_dob"].ToString();
                txtadd.Text = ds.Tables[0].Rows[0]["stf_address"].ToString();
                txtmobno.Text = ds.Tables[0].Rows[0]["stf_mobileno"].ToString();
                txtemail.Text = ds.Tables[0].Rows[0]["stf_email"].ToString();
                txtquli.Text = ds.Tables[0].Rows[0]["stf_qualification"].ToString();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (btnupdate.Text == "EDIT")
            {
                txtadd.Enabled = true;
                txtemail.Enabled = true;
                txtmobno.Enabled = true;
                txtquli.Enabled = true;

                btnupdate.Text = "UPDATE";
            }

            else if (btnupdate.Text == "UPDATE")
            {
                SqlCommand cmd = new SqlCommand("update staff set stf_address='" + txtadd.Text + "',stf_mobileno='" + txtmobno.Text + "',stf_email='" + txtemail.Text + "',stf_qualification='" + txtquli.Text + "' where stf_id = '" + staffid + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Record Successfully Updated.....')</script>");
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtadd.Text = txtemail.Text = txtmobno.Text = txtquli.Text = "";
            getdata();
        }
    }
}