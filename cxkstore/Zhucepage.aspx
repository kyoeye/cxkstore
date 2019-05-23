<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zhucepage.aspx.cs" Inherits="cxkstore.Zhucepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/CXKstyle.css" rel="stylesheet" type="text/css" />
    <script>
   
    </script>
   <style>
       .inputsty{
           height:30px;
       }
       .tdcss{
           text-align:right ;
           padding:10px;
       }
       .tosttextcss{
           color:#6a6363;
           font-family:'Microsoft YaHei';
           font-size:16px;
       }
   </style>
</head>
<body runat="server" style="background-color:#333333;  position:relative">
    <div class="divJZ" runat="server">
        <asp:label   ID="test" CssClass="texttitle" runat="server"   >注册用户</asp:label>
        <!--啊-->
        <form id="ZCform" style="margin-top:50px" runat="server">
            <table style="width:500px;height:400px;text-align:left;margin:auto">
                <tr>
                    <td class="tdcss">用户名</td>
                    <td>
                        <input type="text" id="username" name="username"  class="inputsty" runat="server" />
            <asp:RequiredFieldValidator ErrorMessage="你得有个名字呀" Text="*" ForeColor="red" Display="Dynamic" ControlToValidate="username" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="tdcss">手机号<!--用作账号登陆-->
                    </td>
                    <td>
                        <input type="text" id="phonenum" name="phonenum" class="inputsty"  runat="server" />
            <asp:RequiredFieldValidator ErrorMessage="老伙计，你不会手机号都不告诉我吧" Text="*" ForeColor="red" Display="Dynamic" ControlToValidate="phonenum" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="tdcss">密码
                    </td>
                    <td>
                        <input type="password" class="inputsty"  id="password"  runat="server" name="password" />
                    </td>
                </tr>
                <tr>
                    <td class="tdcss">确认密码
                    </td>
                    <td>
                        <input type="password" class="inputsty" id="passwordrfv" runat="server" name="passwordrfv" />

                    </td>
                </tr>
                <tr>
                    <td class="tdcss">姓名
                    </td>
                    <td>
                        <input type="text"  class="inputsty" id="name" runat="server" name="name" /><br />
                    </td>
                </tr>
                <tr>
                    <td class="tdcss">性别
                    </td>
                    <td>
                        <asp:RadioButtonList ID="Radbtnl" RepeatColumns="3" runat="server">
                            <asp:ListItem runat="server"> 男</asp:ListItem>
                            <asp:ListItem runat="server">女</asp:ListItem>                
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="tdcss">
                        收货地址
                    </td>
                    <td>
                        <input id="dizhi" name="dizhi"  runat="server" class="inputsty" type="text" />
                    </td>
                </tr>
            </table>
             <br />
            <asp:ValidationSummary CssClass="tosttextcss" EnableClientScript="true" DisplayMode="BulletList" runat="server" />
            <br />
            <asp:Button CssClass="btncss_black" Text="注册" ID="ZhuCebtn" OnClick="ZhuCebtn_Click" runat="server" /><br />
            <br />
            <asp:Button CssClass="btncss_black" ID="loginbtn" OnClick="loginbtn_Click" CausesValidation="false" Text="返回登录" runat="server" />
           
        </form>
        <asp:LinqDataSource ID="lds" runat="server" ContextTypeName="LinktoCXK"  ></asp:LinqDataSource>
    </div>
</body>
</html>
