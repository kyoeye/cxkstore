<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHUGL.aspx.cs" Inherits="cxkstore.ZHUGL" %>

<!DOCTYPE html>

<html>
<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <link href="css/Masterstyle.css" rel="stylesheet" type="text/css" />
  <link href="../css/CXKstyle.css" rel="stylesheet" type="text/css" />
    <title></title>
     <style type="text/css"  >
   
        .griditem{
            text-wrap:normal;
        }
         .auto-style1 {
             float: left;
             height: 40px;
             width: 187px;
         }
        </style>
</head>
<body>
   <form id="form1" runat="server">
        <div>
              <div style="background-color:#333333;color:white;padding:0px;height:40px;text-align:center">
              <a href="Guanlilogin.aspx"  style="float:left;height:40px;width:40px;margin:0 auto;">
                  <asp:Image Height="30px"  CssClass="logo_m" ImageUrl="~/images/icon/lanqiu.png" runat="server" />
              </a>
            </a>
                <a  style="margin:0 auto;" class="auto-style1">
                    <label style="font-family:HYHeiFang;line-height:40px;font-size:20px;color:white">高贵的管理员您好！</label>
                </a>
            </div>
             <div style="width:100px; text-align:center;margin:auto">
                  <br />
               
                 <asp:Button ID="Button1" runat="server" Text="手机品牌管理" CssClass="btncss_black" Height="45px" Width="121px" BackColor="#3399ff" OnClick="Button1_Click" />
                 <br />
                 <br />
                 <asp:Button ID="Button2" runat="server" Text="供应商管理" CssClass="btncss_black" Height="45px" Width="121px" BackColor="#3333ff" OnClick="Button2_Click"  />
                 <br />
                 <br />
                 <asp:Button ID="Button5" runat="server" Text="手机信息管理" CssClass="btncss_black" Height="45px" Width="121px" BackColor="#3399ff" OnClick="Button5_Click" />
                 
                 <br />
                 <br />
                 <asp:Button ID="Button4" runat="server" Text="订单管理" CssClass="btncss_black" Height="45px" Width="121px" BackColor="#3333ff" OnClick="Button4_Click" />
              
            </div>
            <br />
            <br />
                 <asp:Button ID="But_tuichu" runat="server" Text="退出登录" CssClass="btncss_black" Height="45px" Width="121px" BackColor="#3399ff" OnClick="But_tuichu_Click" />

        </div>
    </form>
</body>
</html>
