using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore.userControl
{
    /// <summary>
    /// card提供：cardTitle标题,imgUrl图片地址,jieShao介绍,jiaGe价格
    /// Luo
    /// </summary>
    public partial class CardUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TitleLable.Text = cardTitle;
            img3.Src = imgUrl ;
            jieshao.InnerText = jieShao;
            JiageLable.Text = "¥ " + jiaGe+"起";
            try
            {
            //    jump = "test2.aspx?phonename=" + cardTitle; //测试页
                jump = "XiangQingpage.aspx?phonename=" + cardTitle;

            }
            catch
            {

            }
        }
        public string cardTitle { get; set; }
        public string imgUrl { get; set; }
        public string jieShao { get; set; }
        public string jiaGe { get; set; }
        public string jump;
 
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("test2.aspx?phonename=" + cardTitle);
        }
        public static  string Divclick()
        {
           // Response.Redirect("test2.aspx?ttext=" + cardTitle);
       
            return "";
        }

        public void Divclick2()
        {
           Response.Redirect("test2.aspx?ttext=" + cardTitle);
          
        }
        protected void Fzbtn_div_click_Click(object sender, EventArgs e)
        {
            Response.Redirect("test2.aspx?ttext=" + cardTitle);
        }
    }
}
 