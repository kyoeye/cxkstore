using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore.userControl
{
    public partial class CardUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TitleLable.Text = cardTitle;
            img.ImageUrl = imgUrl ;
            jieshao.InnerText = "ddd";
            JiageLable.Text = jiaGe;
        }
        public string cardTitle { get; set; }
        public string imgUrl { get; set; }
        public string jieShao { get; set; }
        public string jiaGe { get; set; }

    }
}