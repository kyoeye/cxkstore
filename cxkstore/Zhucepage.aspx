<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zhucepage.aspx.cs" Inherits="cxkstore.Zhucepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <h1>注册用户</h1>
    <form id="ZCform">
        姓名:<br/>
        <input type="text" name="firstname"/>
        <br>
        年龄:<br/>
        <input type="text" name="lastname"/><br/>
              性别:<br/>
        <asp:RadioButtonList ID="RadButton"   runat="server">
            <asp:ListItem>
                男
            </asp:ListItem>   
            <asp:ListItem>
                女
            </asp:ListItem>
               <asp:ListItem>
                蔡徐坤
            </asp:ListItem>
        </asp:RadioButtonList><br/>
              地址:<br/>
        <input type="text"  /><br/>
    </form>
</body>
</html>
