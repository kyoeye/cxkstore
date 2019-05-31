﻿using cxkstore.Models;
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
    public partial class DDpage : System.Web.UI.Page
    {
         protected string cxkdb = System.Configuration.ConfigurationManager.ConnectionStrings["CXKdbConnectionString"].ConnectionString; //数据库连接字串
        protected string dd_add,dd_cx;//查询语句
        string uid, uid2, pnm, ddc, ddp;
        double zjg;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                uid = Request.Cookies["uid"].Value;
                if (uid != null)
                {
                    dd_cx = string.Format("select * from DDxinxi left outer join Phonexinxi on DDxinxi.phonenum = Phonexinxi.phonenum where userid={0}", uid);
                    GetdbContent(dd_cx, "cx");
                    ShowCard();
                }
                uid2 = Request.QueryString["uid"];//用来判断时从商品页一键购买的
                if (uid2 != null)
                {
                    //select * from DDxinxi left outer join Phonexinxi on DDxinxi.phonenum = Phonexinxi.phonenum where userid=1013
                    string[] g = (string[])Session["buy"]; //pnm, ddc, ddp, pjiage
                    pnm = Request.QueryString["pnm"];
                    ddc = Request.QueryString["ddc"];
                    ddp = Request.QueryString["ddp"];
                    zjg = double.Parse(g[3]);
                    dd_add = string.Format("insert into DDxinxi(phonenum,userid,ddshuliang,ddzje,ddcolor,ddpeizhi) values({0},{1},1,{2},N'{3}','{4}')", pnm, uid, zjg, ddc, ddp);
                    //insert into DDxinxi(phonenum,userid,ddshuliang,ddzje,ddcolor,ddpeizhi,ddzhuangtai) values(118,1013,1,'2018.11',N'坤坤紫','8 128GB',0)
                    GetdbContent(dd_add, "add");
                }
            }
            catch
            {
            }        
     
        }
        /*订单会有两种情况，一种是直接购买，接收一个标识然后在这里创建订单
         另一种是购物车过来的，会有多个商品，这时候需要个list存储，这个list和单个数量是通用的，购买一个商品和购物车购买全部商品不会同时发生
         订单时间需要在这里做，但只用在前台显示，数据库可以自己加时间，如果不行就再用这边的时间
         */
        List<DDXinxi> lkm = new List<DDXinxi> { };
        /// <summary>
        /// 现在变得能够重用了（大概）
        /// </summary>
        /// <param name="comtext"查询字串发送</param>
        ///<param name="dowhat" >调用gdc要做啥</param>
        protected void GetdbContent(string comtext, string dowhat)
        {
            using (SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = comtext;
                if (dowhat == "add")
                {
                int m = sqlc.ExecuteNonQuery();
                }
                else if (dowhat == "cx")
                {
                    using (SqlDataReader reader = sqlc.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            lkm.Add(new DDXinxi
                            {
                                ddid = int.Parse(reader["ddid"].ToString()),
                                userid = int.Parse(reader["userid"].ToString()),
                                phonenum = int.Parse(reader["phonenum"].ToString()),
                                ddshuliang = int.Parse(reader["ddshuliang"].ToString()), //数量可能不做了，或者执行一个查询语句更改是数量
                                ddzjg = double.Parse( reader["ddzje"].ToString()),
                                ddcolor = reader["ddcolor"].ToString(),
                                ddpeizhi = reader["ddpeizhi"].ToString(),
                                phonename = reader["phonename"].ToString(),
                                ddzhuangtai = reader["ddzhuangtai"].ToString(),
                                ddtime = reader["ddtime"].ToString(),
                            });
                        }
                      
                    }

                }
                else if (dowhat == "adds")
                {
                }
            }
        }


        /// <summary>
        /// 显示订单列表，循环打出用户控件
        /// 需要个list
        /// Luo
        /// </summary>
        public void ShowCard()
        {
            //通过循环创建用户控件，让它在ul1中创建
            for (int i = 0; i < lkm.Count; i++)
            {
                DDitemUserControl control = (DDitemUserControl)Page.LoadControl("~/userControl/DDitemUserControl.ascx");
                control.pname = lkm[i].phonename;
                control.pcolor = lkm[i].ddcolor;
                control.ppeizhi = lkm[i].ddpeizhi;
                double a =  lkm[i].ddzjg*lkm[i].ddshuliang;
                control.pshuliang = lkm[i].ddshuliang.ToString();
                control.pjiage = a.ToString();//价格
                Ul4.Controls.Add(control);
            }
        }
    }
}