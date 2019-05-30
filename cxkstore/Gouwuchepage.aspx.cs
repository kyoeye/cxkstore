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

        private string Ct_chaxungwc;
   //     public string Ct_addcontent { get { return ct_addcontent; } set { value = string.Format("insert into GWCtable(userid,phonenum,shuliang,zhuangtai,ddcolor,ddpeizhi) values({0},{1},{2},{3},N'{4}',N'{5}')", uid, pnm, sl, zt, ddc, ddp); } }

        string uid, pnm, sl, zt = "0", ddc, ddp,gid;
        protected void Page_Load(object sender, EventArgs e)
        {
            //  Ct_rmcontentt=string.Format("delete from GWCtable where gwcid={0}')", gid); 
            //select * from GWCtable,Phonexinxi where GWCtable.phonenum=Phonexinxi.phonenum and userid='1019'
            try
            {
                if (Request.QueryString["gwcdelete"]!=null ){
                    var a = Request.QueryString["gwcdelete"];
                    ct_rmcontent =  string.Format("delete from GWCtable where gwcid='{0}'",a);
                    GetdbContent(ct_rmcontent, "delete");
                  //要弄刷新页面
                }
                else
                {
                    uid = HttpUtility.UrlDecode(Request.Cookies["uid"].Value);//通过id来获取当前用户的购物车
                    Ct_chaxungwc = string.Format("select * from GWCtable,Phonexinxi where GWCtable.phonenum=Phonexinxi.phonenum and userid='{0}'", uid);
                    GetdbContent(Ct_chaxungwc, "cx");
                    ShowCard();
                }
            }
            catch
            {
                Lable_tost.Visible = true;
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
        /// <param name="comtext"查询字串发送</param>
        ///<param name="dowhat" >调用gdc要做啥</param>
        protected void GetdbContent(string comtext,string dowhat)
        {
            using (SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = comtext;
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
                                shuliang = int.Parse(reader["shuliang"].ToString()), //数量可能不做了，或者执行一个查询语句更改是数量
                                zhuangtai = reader["zhuangtai"].ToString(),
                                ddcolor = reader["ddcolor"].ToString(),
                                ddpeizhi = reader["ddpeizhi"].ToString(),
                                phonename = reader["phonename"].ToString(),
                                pjieshao = reader["pjieshao"].ToString(),
                                price = reader["phoneprice"].ToString()
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
                else if (dowhat == "delete")
                {

                         if( sqlc.ExecuteNonQuery()!=0)//获取响应行数
                        this.Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "", "<script language='javascript'>alert(\"删除成功啦￣▽\");</script>", false);

                   

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
                control.GW_cardTitle = gwcxinxis[i].phonename;
                control.GW_jieShao = gwcxinxis[i].pjieshao;
                control.GW_jiage = gwcxinxis[i].price;//价格                                                   //     control.imgUrl = "../images/OPPO/OPPOreno%20(1).jpg";
                control.GW_color = gwcxinxis[i].ddcolor;
                control.GW_peizhi = gwcxinxis[i].ddpeizhi;
                control.GW_gwcid = gwcxinxis[i].gwcid.ToString();
                control.GW_sl = gwcxinxis[i].shuliang.ToString();
                control.GW_imgUrl = "../images/" + gwcxinxis[i].phonename + "%20(1).jpg";//拼接图片地址
                Ul1.Controls.Add(control);
            }
        }

    }
}