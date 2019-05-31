<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guanlilogin.aspx.cs" Inherits="cxkstore.Guanlilogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <style type="text/css">
        .griditem{
            text-wrap:normal;
        }
        .auto-style12 {
            width: 562px;
            height: 104px;
        }
        .auto-style17 {
          width: 196px;
          height: 53px;
      }
      .auto-style20 {
          height: 53px;
      }
        .auto-style21 {
          width: 196px;
          height: 48px;
      }
      .auto-style22 {
          height: 48px;
      }
        .auto-style23 {
          margin-left: 0px;
      }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>        
            <br />
            <div style="width:100px; text-align:center;margin:auto">
            <p>管理员登录</p>
            </div>
            <table style="text-align:left;margin:auto" class="auto-style12">
                <tr>
                 <td class="auto-style17">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理员账号</td>
                    <td class="auto-style20">
                       <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 密&nbsp; 码</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="202px"></asp:TextBox>
                    </td>
                </tr>
                </table>
              <div style="width:100px; text-align:center;margin:auto">
                     <br />
                  <asp:Button ID="Button2" runat="server" Text="确定"  BackColor="#66ccff" Height="33px" Width="92px" OnClick="Button2_Click"/>
                      <br />
                      <br />
                      <br />  
                <asp:Button ID="Button1" runat="server" Text="返回主页"  OnClick="Button1_Click" Height="37px" Width="102px" BackColor="#00ffff" CssClass="auto-style23"/>
            </div>
        </div>
    </form>
</body>
</html>