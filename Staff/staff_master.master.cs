using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_final.Staff
{
    public partial class staff_master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["stfid"] != null)
            {
                int stfid = Convert.ToInt32(Session["stfid"]);
                stfprofile.ImageUrl = Session["stfimg"].ToString();
            }
            else
            {
                Response.Redirect("~/staff_login.aspx");
            }
        }

        protected void lnklogout_Click(object sender, EventArgs e)
        {
            Session["stfid"] = null;
            Session["stfimg"] = null;
            Session.Abandon();
            Response.Redirect("~/staff_login.aspx");
        }
    }
}