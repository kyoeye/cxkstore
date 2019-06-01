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
            try
            {
                if (Request.Cookies["tt2"].Value != "")
                {
                    string t2 = HttpUtility.UrlDecode(Request.Cookies["tt2"].Value);
                    tologin.Text = t2 + "，欢迎你回来！";
                    lnkbtnLogout.Visible = true;
                }
                else
                {
                    tologin.Text = "亲，请登录！";
                    lnkbtnLogout.Visible = false;
                }
            }
            catch
            {

            }

        }

        protected void lnkbtnLogout_Click(object sender, EventArgs e)
        {
            HttpCookie ck = Response.Cookies["tt2"];
            if(ck!=null)
            {
                ck.Values.Remove("tt2");
            }
            HttpCookie ck2 = Response.Cookies["uid"];
            if (ck2 != null)
            {
                ck2.Values.Remove("uid");
            }
            lnkbtnLogout.Visible = false;
                Response.AddHeader("Refresh", "0");
       
 
        }


        protected void tologin_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void guanlibtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Guanlilogin.aspx");
        }
    }
}