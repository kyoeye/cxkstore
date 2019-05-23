using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
    public partial class Zhucepage : System.Web.UI.Page
    {
        string cxkdb = System.Configuration.ConfigurationManager.ConnectionStrings["CXKdbConnectionString"].ConnectionString; //数据库连接字串

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
            try
            {
                Sex = Radbtnl.SelectedIndex.ToString();//获取一个数字，数据库也是存数字
            }
            catch
            {
                Sex = "0";
            }
            PhoneNum = phonenum.Value;

            using(SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = string.Format("insert into Userdb(username,sex,password,shouhuodizhi,phonenum) values(N'{0}',@sex,@password,N'{1}',@phonenum)",Name,DiZhi);
                sqlc.Parameters.AddWithValue("@sex", Sex);
                sqlc.Parameters.AddWithValue("@password", Password);//正常来说密码应该加密存储
                sqlc.Parameters.AddWithValue("@phonenum", PhoneNum);
                int m = sqlc.ExecuteNonQuery();
                if (m == 0)
                   test.Text = "注册失败！请重新注册。";
                else
                    test.Text = "注册成功！";
            }

           

        }
    }
}