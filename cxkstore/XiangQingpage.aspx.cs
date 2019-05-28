using cxkstore.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
    public partial class XiangQingpage : System.Web.UI.Page
    {

        string cxkdb = System.Configuration.ConfigurationManager.ConnectionStrings["CXKdbConnectionString"].ConnectionString; //数据库连接字串
        public string selectcolor { get; set; }//当前选择的手机颜色  /我也不知道我为啥要用访问器
        public string selectpeizhi { get; set; }//当前选择的配置
        public string pname;
        //目前需要一个正则提取数据库返回的颜色 以空格区分
        public IList<string> mulist2 = new List<string>();
        public IList<string> peizhi_list = new List<string>();
        List<PhoneXinxi> phonexinxis = new List<PhoneXinxi> { };
        protected void Page_Load(object sender, EventArgs e)
        {
            //  imgg. = "../images/OPPO/" + phonexinxis[i].phonename + "%20(1).jpg";
            // test2();
            var testtest = Request.QueryString["peizhi"];  //尝试获取ajax传过来的数据//竟然自动转换了UrlEncode        
            if (testtest != null)
            {
                selectcolor = Request.QueryString["pcolor"];//存储当前选的颜色  ajax会通过get传递一个testtest，如果这个不为空则是ajax，如果为空则是刚进来
                selectpeizhi = testtest;
            }
            else
            {
                pname = Request.QueryString["phonename"];
                if (pname == null)
                {
                    Response.Redirect("Searchpage.aspx");
                }
                GetdbContent();
                Setwebcontent();
            }
        }

        /// <summary>
        /// 给页面元素赋值
        /// </summary>
        private void Setwebcontent()
        {
            phonename_label.Text = phonexinxis[0].phonename;
            Title_label.Text= "购买   " + phonexinxis[0].phonename;
            Label6.Text = phonexinxis[0].phonename;//底部购买的手机名字
            Label2_jieshao.Text = phonexinxis[0].phonetext;//这个可能不是介绍配置，没想好
            Label1_peizhixinxi.Text = phonexinxis[0].pjieshao;
            Label3.Text = phonexinxis[0].phonebrand;
           
        }


        #region 数据获取
        /// <summary>
        /// 访问数据库
        /// 获取搜索传过来的手机名字，查询数据库，也要查询品牌信息表;
        /// 购物车可能不在这，一键购买跳转订单生成不用在这做。
        /// </summary>
        public void GetdbContent()
        {
            using (SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = string.Format("select  * from Phonedb ,Phonexinxi Where Phonedb.phoneId=Phonexinxi.phoneid and phonename=N'{0}'", pname);
                /*select  * from Phonedb ,Phonexinxi Where Phonedb.phoneId=Phonexinxi.phoneid and phonename='OPPOreno' 连接查询 锦秋*/
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
                            ppeizhi = reader["ppeizhi"].ToString(),
                            phonebrand = reader["phonebrand"].ToString(),
                            phonetext = reader["phonetext"].ToString(),
                        });
                    }
                }

            
                try
                {
                    GetPhoneColor(phonexinxis[0].pcolor); //这里报错十有八九是phonename为空，懒得管跳回搜索页
                    GetPhonepz(phonexinxis[0].ppeizhi);//获取配置
                }
                catch
                {
                    Response.Redirect("Searchpage.aspx");
                }
            }
        }
        /// <summary>
        /// 提取颜色 空格区分 用mulist2来存就很不错_(:з)∠)_
        /// </summary>
        public void GetPhoneColor(string c)
        {
            string[] s = Regex.Split(c, " ");
            for (int i = 0; i < s.Length; i++)
            {
                mulist2.Add(s[i]);
            }
        }
        /// <summary>
        /// 提取配置规格 空格区分 peizhi_list存(:з)∠)_
        /// </summary>
        /// <param name="c"></param>
        public void GetPhonepz(string c)
        {
            string[] s = Regex.Split(c, " ");
            for (int i = 0; i < s.Length; i++)
            {
                peizhi_list.Add(s[i]);
            }
        }
        #endregion
        #region 测试用   
        public void test2()
        {
            mulist2.Add("坤坤绿");
            mulist2.Add("笨蛋蓝");
        }
        public string ts;
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            Label3.Text = ts;
        }
        #endregion
    }
}