﻿using System;
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
    public partial class stud_changpass : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            int grno = Convert.ToInt32(Session["studgrno"]);


            SqlCommand cmd = new SqlCommand("select stud_password from student where  stud_grno= '" + grno + "' and stud_password= '" + txtoldpass.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd2 = new SqlCommand("update student set stud_password = '" + txtnewpass.Text + "' where stud_grno = '" + grno + "' AND stud_password = '" + txtoldpass.Text + "'", con);
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Write("<script language='javascript'>alert('Password Change Succesfully...')</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Invalid Old Password')</script>");
            }
        }
    }
}