using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore.userControl
{
    public partial class DDitemUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            label_dname.Text = pname;
            label_dcolor.Text = pcolor;
            label_dpeizhi.Text = ppeizhi;
            label_jiage.Text = pjiage+"元";
            span_shuliang.InnerText ="x"+pshuliang;

        }
        public string pname { get; set; }
        public string pcolor { get; set; }
        public string ppeizhi { get; set; }
        public string pjiage { get; set; }
        public string pshuliang{ get; set; }
    }
}