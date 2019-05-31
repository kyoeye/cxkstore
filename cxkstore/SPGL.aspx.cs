using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cxkstore
{
    public partial class SPGL : System.Web.UI.Page
    {
        string cxkdb = System.Configuration.ConfigurationManager.ConnectionStrings["CXKdbConnectionString"].ConnectionString; //数据库连接字串
        int a=0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string phoneName, pjieShao, pColor, ppeiZhi;
            int phoneId, gysId, pkuCun;
            double phonePrice, pchengBen;
            phoneId = int.Parse(phoneid.Value);
            gysId = int.Parse(gysid.Value);
            pkuCun = int.Parse(pkucun.Value);
            phoneName = phonename.Value;
            phonePrice = double.Parse(phoneprice.Value);
            pchengBen = double.Parse(pchengben.Value);
            pjieShao = pjieshao.Value;
            pColor = pcolor.Value;
            ppeiZhi = ppeizhi.Value;

            using (SqlConnection sc = new SqlConnection(cxkdb))
            {
                SqlCommand sqlc = sc.CreateCommand();
                sc.Open();
                sqlc.CommandText = string.Format("insert into Phonexinxi(phoneid,gysid,phonename,phoneprice,pjieshao,pchengben,pkucun,pcolor,ppeizhi) values({0},{1},@phonename,{2},@pjieshao,{3},{4},@pcolor,@ppeizhi)", phoneId, gysId, phonePrice, pchengBen, pkuCun);
                sqlc.Parameters.AddWithValue("@phonename", phoneName);
                sqlc.Parameters.AddWithValue("@pjieshao", pjieShao);
                sqlc.Parameters.AddWithValue("@pcolor", pColor);
                sqlc.Parameters.AddWithValue("@ppeizhi", ppeiZhi);
                int m = sqlc.ExecuteNonQuery();
                if (m != 0)
                {
                    Response.Redirect("SPGL.aspx");
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SJPAGL.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DDGL.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("GYSGL.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ZHUGL.aspx");
        }
    }
}