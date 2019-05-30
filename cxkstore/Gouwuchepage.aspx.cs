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
        public string Ct_addcontent { get { return ct_addcontent; } set { value = string.Format("insert into GWCtable(userid,phonenum,shuliang,zhuangtai,ddcolor,ddpeizhi) values({0},{1},{2},{3},N'{4}',N'{5}')", uid, pnm, sl, zt, ddc, ddp); } }
        public string Ct_rmcontentt { get { return ct_rmcontent; } set { value = string.Format("delete from GWCtable where gwcid={0}')", gid); } }
        string uid, pnm, sl, zt = "0", ddc, ddp,gid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //获取数据库时判断是否有数据，没有就显示当前购物车为空。
        //方案一页面的服务器控件发出删除事件，后台删除重新生成U1的列表，就是购物车移除操作，前台用js删除li
        //方案二页面动态生成用户控件，用js，类似详情页，然后用ajax发送数据后台执行删除，通过id索引，//不靠谱

        #region 数据获取
       /// <summary>
       /// 现在变得能够重用了（大概）
       /// </summary>
       /// <param name="comtext">连接字串发送</param>
        protected void GetdbContent(string comtext)
        {
            using (SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = comtext;
                int m = sqlc.ExecuteNonQuery();//获取响应行数




            }
        }


        #endregion


    }
}