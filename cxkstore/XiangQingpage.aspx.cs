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
        private string uid, pnm, sl, zt = "0", ddc, ddp;
        private string ct_addcontent;
        public string Ct_addcontent { get { return ct_addcontent; } set { ct_addcontent= value; } }
        public string selectcolor;//当前选择的手机颜色 
        public string selectpeizhi;//当前选择的配置
        public string pname,pjiage;
        //目前需要一个正则提取数据库返回的颜色 以空格区分
        public IList<string> mulist2 = new List<string>();
        public IList<string> peizhi_list = new List<string>();
        List<PhoneXinxi> phonexinxis = new List<PhoneXinxi> { };
    protected void Page_Load(object sender, EventArgs e)
        {
            //  imgg. = "../images/OPPO/" + phonexinxis[i].phonename + "%20(1).jpg";
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
            try
            {
                uid = HttpUtility.UrlDecode(Request.Cookies["uid"].Value);
            }
            catch
            {
            //    Response.Redirect("UserLogin.aspx");
            }
            var g = Request.QueryString["gettogwc"];  //ajax传过来的添加到购物车  //昨晚留：可以执行了，但是phonexinxis被刷新掉了信息全没了……
            if (g!=null)
            {
                pname = Request.QueryString["pname"];
                selectcolor = Request.QueryString["pcolor"];
                selectpeizhi = testtest;
                GetdbContent();//list会丢据……再访问一次数据库……
                addtobag_btn_Click();
            }
            var buy = Request.QueryString["gettobuy"];
            if (buy != null)
            {
                pname = Request.QueryString["pname"];
                selectcolor = Request.QueryString["pcolor"];
                selectpeizhi = testtest;
                pjiage = Request.QueryString["jiage"];
                GetdbContent();
                Buy_btn_Click();

            }
            img1.Src = string.Format("~/images/{0}(1).jpg",pname);
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
        /// 5.29加了个重载的访问数据库的方法，它更吊点
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
                        pjiage = reader["phoneprice"].ToString();
                    }
                }
                try
                {
                    GetPhoneColor(phonexinxis[0].pcolor); //这里报错十有八九是phonename为空，懒得管跳回搜索页
                    GetPhonepz(phonexinxis[0].ppeizhi);//获取配置
                    sc.Close();
                }
                catch
                {
                    Response.Redirect("Searchpage.aspx");
                }
            }
        }
        protected void GetdbContent(string comtext)
        {
            using (SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = comtext;
                int m = sqlc.ExecuteNonQuery();//获取响应行数
                if (m != 0) { }
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


        /// <summary>
        /// 变量赋值给购物车的查询字串里的变量用
        /// </summary>
        public void Setgwcbl()
        {
            pnm = phonexinxis[0].phonenum;
            sl = "1";
            ddc = selectcolor;
            ddp = selectpeizhi;
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
        //还是要用ajax，这个clik会刷新造成丢失
        protected void addtobag_btn_Click()
        {
            Setgwcbl();
            Ct_addcontent = string.Format("insert into GWCtable(userid,phonenum,shuliang,zhuangtai,ddcolor,ddpeizhi) values({0},{1},{2},{3},N'{4}',N'{5}')", uid, pnm, sl, zt, ddc, ddp);
            GetdbContent(Ct_addcontent);
        }
        protected void Buy_btn_Click()
        {
            string name = phonexinxis[0].phonename;
            pnm = phonexinxis[0].phonenum;
            ddc = selectcolor;
            ddp = selectpeizhi;
            string jump = "DDpage.aspx?uid=" + uid + "&pnm=" + pnm + "&color=" + ddc + "&peizhi=" + ddp ;
            string[] stest = { pnm, ddc, ddp, pjiage, name };
            Session["buy"] = stest;
            Context.Response.Write(jump);
            Response.End();
            Response.Redirect(jump); //用了ajax这个跳转就会失效
          //  this.Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "", "<script language='javascript'>location.href = '"+jump+"'</script>", false);
            this.Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "", "<script language='javascript'>jump();</script>", false);

        }

    }
}