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
    public partial class admin_profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        int adid;
        protected void Page_Load(object sender, EventArgs e)
        {
            adid = Convert.ToInt32(Session["ad_id"]);
            if (!IsPostBack)
            {
                getdata();

                txtuser.Enabled = false;

                btnupdate.Text = "EDIT";

            }
        }

        public void getdata()
        {
            SqlCommand cmd = new SqlCommand("select ad_username,ad_name,ad_regdate from admin where ad_id = '" + adid + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblname.Text = ds.Tables[0].Rows[0]["ad_name"].ToString();
                lblregdate.Text = ds.Tables[0].Rows[0]["ad_regdate"].ToString();
                txtuser.Text = ds.Tables[0].Rows[0]["ad_username"].ToString();
                
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (btnupdate.Text == "EDIT")
            {
                txtuser.Enabled = true;

                btnupdate.Text = "UPDATE";
            }

            else if (btnupdate.Text == "UPDATE")
            {
                SqlCommand cmd = new SqlCommand("update admin set ad_username='" + txtuser.Text + "' where ad_id = '" + adid + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Record Successfully Updated.....')</script>");
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtuser.Text = "";
            getdata();
        }
    }
}