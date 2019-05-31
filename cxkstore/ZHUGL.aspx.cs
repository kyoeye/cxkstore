using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
        public partial class ZHUGL : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {

            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                Response.Redirect("SJPAGL.aspx");
            }

            protected void Button2_Click(object sender, EventArgs e)
            {
                Response.Redirect("GYSGL.aspx");
            }

            protected void Button4_Click(object sender, EventArgs e)
            {
                Response.Redirect("DDGL.aspx");
            }

            protected void But_tuichu_Click(object sender, EventArgs e)
            {
                Response.Redirect("Mainpage.aspx");
            }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("SPGL.aspx");
        }
    }
   
}