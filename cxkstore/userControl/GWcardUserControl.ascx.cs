using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore.userControl
{
    public partial class GWcardUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                TitleLable.Text = GW_cardTitle;
                img3.Src = GW_imgUrl;
                jieshao.InnerText = GW_jieShao;
                double a = double.Parse(GW_jiage);
                double b = double.Parse(GW_sl);
                double c = a * b;
                GW_jiage = c.ToString();
                JiageLable2.InnerText = GW_jiage;
                label_sl.InnerText = GW_sl;
            }
            catch
            {

            }
        }
        public string GW_cardTitle { get; set; }
        public string GW_jieShao { get; set; }
        public string GW_imgUrl { get; set; }
        public string GW_jiage { get; set; }
        public string GW_color { get; set; }
        public string GW_peizhi { get; set; }
        public string GW_sl { get; set; }
        public string GW_gwcid { get; set; }

    }
}