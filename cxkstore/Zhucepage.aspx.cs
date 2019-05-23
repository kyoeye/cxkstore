using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
    public partial class Zhucepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void ZhuCebtn_Click(object sender, EventArgs e)
        {
            string Name, Sex, Password, DiZhi, PhoneNum;
            Name = name.Value;
            Password = password.Value;
            DiZhi = dizhi.Value;
            Sex = Radbtnl.SelectedItem.Value;//获取一个数字，数据库也是存数字
            PhoneNum = phonenum.Value;

            string str = System.Configuration.ConfigurationManager.ConnectionStrings["CXKdb"].ToString();

           

        }
    }
}