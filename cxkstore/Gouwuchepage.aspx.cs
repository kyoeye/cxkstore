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
    public partial class Gouwuchepage : System.Web.UI.Page
    {
         protected string cxkdb = System.Configuration.ConfigurationManager.ConnectionStrings["CXKdbConnectionString"].ConnectionString; //数据库连接字串
        private string ct_addcontent, ct_rmcontent;
        private  string Ct_rmcontentt { get { return ct_rmcontent; } set { ct_rmcontent = value; } }
        private string Ct_chaxungwc;
   //     public string Ct_addcontent { get { return ct_addcontent; } set { value = string.Format("insert into GWCtable(userid,phonenum,shuliang,zhuangtai,ddcolor,ddpeizhi) values({0},{1},{2},{3},N'{4}',N'{5}')", uid, pnm, sl, zt, ddc, ddp); } }

        string uid, pnm, sl, zt = "0", ddc, ddp,gid;
        protected void Page_Load(object sender, EventArgs e)
        {
            //  Ct_rmcontentt=string.Format("delete from GWCtable where gwcid={0}')", gid); 
            //select * from GWCtable,Phonexinxi where GWCtable.phonenum=Phonexinxi.phonenum and userid='1019'
    
            uid = HttpUtility.UrlDecode(Request.Cookies["uid"].Value);//通过id来获取当前用户的购物车
            if(uid!=null )
            {
                Ct_chaxungwc = string.Format("select * from GWCtable,Phonexinxi where GWCtable.phonenum=Phonexinxi.phonenum and userid='{0}'",uid);
                GetdbContent(Ct_chaxungwc, "cx");

            }


        }

        //获取数据库时判断是否有数据，没有就显示当前购物车为空。
        //方案一页面的服务器控件发出删除事件，后台删除重新生成U1的列表，就是购物车移除操作，前台用js删除li
        //方案二页面动态生成用户控件，用js，类似详情页，然后用ajax发送数据后台执行删除，通过id索引，//不靠谱

        #region 数据获取
        List<GwcXinxi> gwcxinxis = new List<GwcXinxi> { };
        /// <summary>
        /// 现在变得能够重用了（大概）
        /// </summary>
        /// <param name="comtext">连接字串发送</param>
        ///<param name="dowhat" >调用gdc要做啥</param>
        protected void GetdbContent(string comtext,string dowhat)
        {
            using (SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = comtext;
             //   int m = sqlc.ExecuteNonQuery();//获取响应行数
                if(dowhat=="cx")
                {
                    using (SqlDataReader reader = sqlc.ExecuteReader())
                    {
                        while (reader.Read())
                        {            
                            gwcxinxis.Add(new GwcXinxi
                            {
                                gwcid = int.Parse(reader["gwcid"].ToString()),
                                userid = int.Parse(reader["userid"].ToString()),
                                phonenum = int.Parse(reader["phonenum"].ToString()),
                                shuliang = int.Parse( reader["shuliang"].ToString()), //数量可能不做了，或者执行一个查询语句更改是数量
                                zhuangtai  = reader["zhuangtai"].ToString(),
                                ddcolor = reader["pjieshao"].ToString(),
                                ddpeizhi = reader["pchengben"].ToString(),
                            });
                        }
                        if (reader.HasRows == false)
                        {
                            Lable_tost.Visible = true;
                        }
                        else
                        {
                            Lable_tost.Visible = false;
                        }
                    }
                }

            }
        }


        #endregion

        /// <summary>
        /// 显示购物车
        /// 需要个list
        /// Luo
        /// </summary>
        public void ShowCard()
        {
            //通过循环创建用户控件，让它在ul1中创建
            for (int i = 0; i < gwcxinxis.Count; i++)
            {
               GWcardUserControl control = (GWcardUserControl)Page.LoadControl("~/userControl/GWcardUserControl.ascx");
                control.cardTitle = phonexinxis[i].phonename;
                control.jieShao = phonexinxis[i].pjieshao;
                control.jiaGe = phonexinxis[i].price;//价格
                                                     //     control.imgUrl = "../images/OPPO/OPPOreno%20(1).jpg";
                control.imgUrl = "../images/OPPO/" + phonexinxis[i].phonename + "%20(1).jpg";//拼接图片地址
                Ul1.Controls.Add(control);
            }
        }

    }
}