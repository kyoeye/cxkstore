using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
    public partial class SJPAGL : System.Web.UI.Page
    {
        string cxkdb = System.Configuration.ConfigurationManager.ConnectionStrings["CXKdbConnectionString"].ConnectionString; //数据库连接字串
        int a = 0;
        protected void Button1_Click(object sender, EventArgs e)
        {
            string phoneBrand, phoneText;
            phoneBrand = phonebrand.Value;
            phoneText = phonetext.Value;

            using (SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = string.Format("insert into Phonedb(phonebrand,phonetext) values(@phonebrand,@phonetext)");
                sqlc.Parameters.AddWithValue("@phonebrand", phoneBrand);
                sqlc.Parameters.AddWithValue("@phonetext", phoneText);
                int m = sqlc.ExecuteNonQuery();
                if (m != 0)
                {
                    Response.Redirect("SJPAGL.aspx");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("GYSGL.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SPGL.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("DDGL.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ZHUGL.aspx");
        }
    }
}