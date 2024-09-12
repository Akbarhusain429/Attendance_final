using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_final.Admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ad_id"] != null)
            {
                int adid = Convert.ToInt32(Session["ad_id"]);
            }
            else
            {
                Response.Redirect("~/Admin/admin_login.aspx");
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["ad_id"] = null;
            Session["ad_image"] = null;
            Session.Abandon();
            Response.Redirect("~/Admin/admin_login.aspx");
        }
    }
}