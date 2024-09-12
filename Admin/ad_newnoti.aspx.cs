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
    public partial class ad_newnoti : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        int valid = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from news ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            con.Open();
            cmd.ExecuteNonQuery();
            sda.Fill(ds);
            con.Close();

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                string ndetail = txtndetail.Text;
                string date = System.DateTime.Now.ToString("yyyy-MM-dd");

                SqlCommand cmd = new SqlCommand("insert into news (n_detail,n_date) values ('" + ndetail + "','" + date + "')", con);

                con.Open();
                valid = cmd.ExecuteNonQuery();
                con.Close();

                if (valid == 1)
                {
                    Response.Write("<script>alert('Notification Upload Successfully.....')</script>");
                    //Response.Redirect("ad_addstud.aspx");
                    txtndetail.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Notification Not Upload Successfully!!!!!')</script>");
                }
            }
        }
    }
}