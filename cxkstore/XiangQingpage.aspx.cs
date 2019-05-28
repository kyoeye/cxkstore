using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
    public partial class XiangQingpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //  imgg. = "../images/OPPO/" + phonexinxis[i].phonename + "%20(1).jpg";
         
                test2();
         
            var testtest = Request.QueryString["test"];  //尝试获取ajax传过来的数据//竟然自动转换了UrlEncode
          //  Label3.Text =testtest;//这种写法似乎不刷新label的内容 可能是第一遍给label赋值后，服务器就管不到它了
            selectcolor =testtest;//存储当前选的颜色
    
    
        }
        public string selectcolor { get; set; }//当前选择的手机颜色  /我也不知道我为啥要用访问器
        //目前需要一个正则提取数据库返回的颜色 以空格区分
        public  IList<string> mulist2 = new List<string>();
        public void test2()
        {
            mulist2.Add("坤坤绿");
            mulist2.Add("笨蛋蓝");
        }
        public string ts;
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            Label3.Text =  ts;
        }
    }
}