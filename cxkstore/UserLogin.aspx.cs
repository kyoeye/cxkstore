using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
    public partial class UserLogin : System.Web.UI.Page
    {
        string cxkdb = System.Configuration.ConfigurationManager.ConnectionStrings["CXKdbConnectionString"].ConnectionString; //数据库连接字串

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ZCButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Zhucepage.aspx");
        }

        protected void LoginButton1_Click(object sender, EventArgs e)
        {
            string Name, Password;
            Name = userName.Text;
            Password = userPassword.Text;
            using (SqlConnection sc = new SqlConnection(cxkdb))//放入连接字串
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();//打开数据库
                //查询字串
                sqlc.CommandText = string.Format(" Select* from Userdb where username = N'{0}' and password = @password", Name);
                //Select * from Userdb where username = N'蔡徐坤' and password = '14564' //加N是因为中文乱码
                sqlc.Parameters.AddWithValue("@password", Password);//正常来说密码应该加密存储

                using (SqlDataReader reader = sqlc.ExecuteReader())
                {
                    while (reader.Read())//返回几行循环几次 只有一次
                    {
                        if(reader["password"].ToString()== Password)//密码判断
                        {
                            //用cookie存储登录信息
                             Response.Cookies["tt2"].Value = HttpUtility.UrlEncode(Name); //创建cookie，用urlencode编码解决中文乱码，读取的时候再转换回来就行
                             Response.Cookies["uid"].Value = HttpUtility.UrlEncode(reader["userid"].ToString()); //创建cookie，用urlencode编码解决中文乱码，读取的时候再转换回来就行
                            // Response.Cookies.Remove("tt2");
                            Response.Redirect("Mainpage.aspx");
                        }
                        else
                        {
                           // LoginButton1.Text = "密码或用户名输入错误！"; 实际不走
                        }
                    }
                    if(reader.HasRows==false)//查询失败没有row
                    {
                        LoginButton1.Text = "密码或用户名输入错误！";
                    }
                }
                /*int m = sqlc.ExecuteNonQuery();
                if (m == 1)
                    Response.Redirect("Mainpage.aspx");
                else
                    LoginButton1.Text = "密码或用户名输入错误！";
                 */


            }


        }
    }
    
}