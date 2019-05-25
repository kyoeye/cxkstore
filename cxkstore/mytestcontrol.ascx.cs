using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore.userControl
{
    public partial class mytestcontrol : System.Web.UI.UserControl
    {
        public string Texttest { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Texttest != null)
            {
                tostlable.Text = this.Texttest;

            }
        }
     
    }
}