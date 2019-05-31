using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore.Properties
{
    public partial class GYSGL : System.Web.UI.Page
    {
        string cxkdb = System.Configuration.ConfigurationManager.ConnectionStrings["CXKdbConnectionString"].ConnectionString; //数据库连接字串
        int a = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gysName, gysaddRess,gysphoneNum;
            gysName = gysname.Value;
            gysaddRess = gysaddress.Value;
            gysphoneNum = gysphonenum.Value;
            using (SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = string.Format("insert into GYSxinxi(gysname,gysaddress,gysphonenum) values(@gysname,@gysaddress,@gysphonenum)");
                sqlc.Parameters.AddWithValue("@gysname", gysName);
                sqlc.Parameters.AddWithValue("@gysaddress", gysaddRess);
                sqlc.Parameters.AddWithValue("@gysphonenum", gysphoneNum);
                int m = sqlc.ExecuteNonQuery();
                if (m != 0)
                {
                    Response.Redirect("GYSGL.aspx");
                }
            }
        }
    }
}