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
    public partial class ad_attenrpt : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            int rollno = Convert.ToInt32(txtrollno.Text);
            string year = txtyear.Text;
            string sem = DropDownList1.SelectedValue.ToString();
            string tabname = sem + "_" + year;

            SqlCommand cmd = new SqlCommand("select atten_date,atten_lecture,stf_id,status from "+ tabname +" where stud_rollno = '"+ rollno +"'",con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}