using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
    public partial class Master1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         if(Request.Cookies["Username"] != null)
            {
                lblMsg.Text=Request.Cookies["Username"].Value + "，欢迎你回来！";
            }
         else
            {
                Response.Redirect("UserLogin.aspx");
            }

        }

        protected void lnkbtnLogout_Click(object sender, EventArgs e)
        {
          
           
        }
    }
}