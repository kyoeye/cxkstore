using cxkstore.Models;
using cxkstore.userControl;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
    public partial class Mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Getdbcontent();
            ShowCard();
        }
        string cxkdb = System.Configuration.ConfigurationManager.ConnectionStrings["CXKdbConnectionString"].ConnectionString; //数据库连接字串

        List<PhoneXinxi> phonexinxis = new List<PhoneXinxi> { };
        public void Getdbcontent()
        {
            using (SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = string.Format("Select* from Phonexinxi ");
                //Select* from Phonexinxi where phonename like N'%OPPO%' 模糊查询           
                using (SqlDataReader reader = sqlc.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        phonexinxis.Add(new PhoneXinxi
                        {
                            phonenum = reader["phonenum"].ToString(),
                            phoneid = reader["phoneid"].ToString(),
                            phonename = reader["phonename"].ToString(),
                            price = reader["phoneprice"].ToString(),
                            pjieshao = reader["pjieshao"].ToString(),
                            pchengben = reader["pchengben"].ToString(),
                            pkucun = reader["pkucun"].ToString(),
                            pcolor = reader["pcolor"].ToString(),
                            ppeizhi = reader["ppeizhi"].ToString()
                        });
                    }
          
                }
            }

        }

        public void ShowCard()
        {
            //通过循环创建用户控件，让它在ul1中创建
            for (int i = 0; i < phonexinxis.Count; i++)
            {
                CardUserControl control = (CardUserControl)Page.LoadControl("~/userControl/CardUserControl.ascx");
                control.cardTitle = phonexinxis[i].phonename;
                control.jieShao = phonexinxis[i].pjieshao;
                control.jiaGe = phonexinxis[i].price;//价格
                control.imgUrl = "../images/" + phonexinxis[i].phonename + "(1).jpg";//拼接图片地址
                Ul1.Controls.Add(control);
            }
        }
    }
}