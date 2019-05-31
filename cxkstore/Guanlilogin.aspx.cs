using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
    public partial class Guanlilogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

  

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "17160406")
                if (TextBox2.Text == "6888")
                { Response.Redirect("UserLogin.aspx"); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            { Response.Redirect("Mainpage.aspx"); }
        }
    }
}