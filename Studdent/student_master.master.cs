using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_final.Studdent
{
    public partial class student_master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["studgrno"] != null)
            {
                int stfid = Convert.ToInt32(Session["studgrno"]);
                studprofile.ImageUrl = Session["studimg"].ToString();
            }
            else
            {
                Response.Redirect("~/Student_login.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["studgrno"] = null;
            Session["studimg"] = null;
            Session.Abandon();
            Response.Redirect("~/Student_login.aspx");
        }
    }
}