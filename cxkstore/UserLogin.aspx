<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="cxkstore.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/CXKstyle.css" rel="stylesheet" type="text/css" />
    <style>
        .logincss {
            overflow: hidden;
            background-color: #ebebeb;
            top: 50%;
            left: 50%;
            margin-top: -150px;
            margin-left: -375px;
            width: 750px;
            height: 300px;
            border-radius: 5px;
            position: absolute;
            right: 1106px;
        }
        .textcss {
            font-family: 'Microsoft YaHei';
            margin: 10px;
            font-size: 18px
        }
        .txtboxcss {
            width: 150px;
            height: 20px;
            border-radius: 5px;
            border-color: cadetblue
        }
        .btncss {
            color: #ffffff;
            border:none;
            font-family:'Microsoft YaHei';
            background-color:#45aee2;
            border-radius: 5px;
            width:150px;
            height:35px;
        }
            .btncss:hover {
         color: #fff;
            border:none;
            font-family:'Microsoft YaHei';
            background-color:#459fe2;
            border-radius: 5px;
            width:150px;
           height:35px;
            }
            .btncss:active {
          color: #fff;
            border:none;
            font-family:'Microsoft YaHei';
            background-color:#2c7ebb;
            border-radius: 5px;
            width:150px;
           height:35px;
            }
        .auto-style1 {
            height: 30px;
        }
        .ccenter{
            margin:0 auto;
        }
        .linkbuttoncss{
            margin:0 0 0 20px;
        }
    </style>
</head>
<body style="background-image: url(images/timgQM1F6PZZ.jpg); background-color:#333333; b ; background-attachment: fixed; background-position: center">
    <form id="form1" runat="server">
        <div>
            <div  class="logincss">
                <div style="overflow: hidden; width: 400px; float: left">
                    <img style="width:550px" runat="server" src="images/u=945315310,1576619437&fm=11&gp=0.jpg" />
                </div>
                <div style=" float:left;padding:3% 0;margin:0 3%">
                    <h1  >登录</h1>
                    <div style="text-align:left">
                        <table style="text-align:left"  runat="server">
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label Text="用户名" CssClass="textcss" runat="server" />
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="userName" CssClass="txtboxcss" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label Text="密码" CssClass="textcss" runat="server" />
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="userPassword" CssClass="txtboxcss" TextMode="Password" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br />
                    <button id="LoginButton1" class="btncss_black" runat="server">登录</button> <!--想了下改用外联样式了-->
                    <asp:LinkButton ID="ZCButton"   Text="新用户注册" CssClass="linkbuttoncss"  OnClick="ZCButton_Click" Font-Size="10" runat="server" />
                </div>
            </div>

        </div>

    </form>

</body>
</html>
