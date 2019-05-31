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
    public partial class Searchpage : System.Web.UI.Page
    {
        string cxkdb = System.Configuration.ConfigurationManager.ConnectionStrings["CXKdbConnectionString"].ConnectionString; //数据库连接字串
        List<PhoneXinxi> phonexinxis = new List<PhoneXinxi> { };
        string searchcount ="";//搜索内容
        /// <summary>
        /// 搜索有两个情况，一种是首页点进来一种是搜索页搜索
        /// 首页跳转会通过querystring接收
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            //pageload接收url发来的搜索参数
            searchcount = Request.QueryString["phonename"];

        }
        /// <summary>
        /// 访问数据库Phonexinxi
        /// Luo
        /// </summary>
        public void Getdbcontent()
        {
            using (SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = string.Format("Select* from Phonexinxi where phonename like N'%{0}%'",searchcount);
                //Select* from Phonexinxi where phonename like N'%OPPO%' 模糊查询           
                using (SqlDataReader reader = sqlc.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Tostlable.Visible = false;
                        phonexinxis.Add(new PhoneXinxi {
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
                    if (reader.HasRows == false)
                    {
                        Tostlable.Visible = true;
                    }
                }
            }
            
        }
        /// <summary>
        /// 显示搜索结果，循环打出用户控件
        /// 需要个list
        /// Luo
        /// </summary>
        public void ShowCard()
        {
            //通过循环创建用户控件，让它在ul1中创建
            for (int i = 0; i < phonexinxis.Count;i++)
            {
                CardUserControl control = (CardUserControl)Page.LoadControl("~/userControl/CardUserControl.ascx");
                control.cardTitle = phonexinxis[i].phonename;
                control.jieShao = phonexinxis[i].pjieshao;
                control.jiaGe = phonexinxis[i].price;//价格
           //     control.imgUrl = "../images/OPPO/OPPOreno%20(1).jpg";
                 control.imgUrl = "../images/OPPO/" + phonexinxis[i].phonename + "%20(1).jpg";//拼接图片地址
                Ul1.Controls.Add(control);
            }
        }
        protected void gga_ServerClick(object sender, EventArgs e)
        {
            searchcount = search_textbox.Value;
            Getdbcontent();
            ShowCard();
        }
    }
}