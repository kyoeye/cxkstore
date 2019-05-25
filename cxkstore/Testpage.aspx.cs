using cxkstore.userControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
    public partial class Testpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            test();
            test2();
            test222.Text = "有执行";
               foreach (string stritem in mulist)
            {
                this.mytestcontrol.Texttest = stritem;

            }
            cardcontrol.cardTitle = "测试标题";
            cardcontrol.jieShao = "测试标题";
            cardcontrol.jiaGe = "9999";
            test4();

        }
        public  IList<string> mulist = new List<string>();
        public string aa = "nihao";

        public void test()
        {
            mulist.Add("啊啊啊啊啊");
            mulist.Add("蔡徐坤出来打球");
        }
        public string ttt = "";

        //成功了test3!!!!!!!!!!!!!
        public void test3()
        {
            //通过循环创建用户控件，让它在ul1中创建
            foreach (string stritem in mulist)
            {
                mytestcontrol control = (mytestcontrol)Page.LoadControl("~/mytestcontrol.ascx");
                Ul1.Controls.Add(control);
                control.Texttest = stritem;
            }
           
        }
        public void test4()
        {
            //通过循环创建用户控件，让它在ul1中创建
            foreach (string stritem in mulist)
            {
                CardUserControl control = (CardUserControl)Page.LoadControl("~/userControl/CardUserControl.ascx");
                Ul1.Controls.Add(control);
                control.cardTitle = stritem;
            }

        }

        public void test2()
        {
            StringBuilder sb = new StringBuilder();
            for(int i = 0; i <= 10; i++)
            {
                sb.Append("li");
                sb.Append("<uc2:mytestcontrol runat='server' ID='mytestcontrol'  />");
                sb.Append("/li");
                ttt += sb.ToString();
            }
           
        }
    }
}