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
                string t2 = HttpUtility.UrlDecode(Request.Cookies["tt2"].Value);
                sssss.Text=t2 + "，欢迎你回来！";
            }
         else
            {
          //      Response.Redirect("UserLogin.aspx");
            }

        }

        protected void lnkbtnLogout_Click(object sender, EventArgs e)
        {
          
           
        }
    }
}