<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="cxkstore.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .logincss{overflow:hidden; background-color:#ebebeb;top:50%;left:50%;margin-top:-125px;margin-left:-375px;width:750px;height:250px;border-radius:5px;position:absolute;
            right: 1106px;
        }
        .textcss{font-family:'Microsoft YaHei';margin:10px;font-size:18px}
        .txtboxcss{width:150px;height:20px;border-radius:5px;border-color:cadetblue}
         </style>
</head>
<body style="background-image:url(images/timgQM1F6PZZ.jpg);background-attachment:fixed;background-position:center" >
    <form id="form1" runat="server">
              <div  >
                 <div class="logincss">
  <div style="overflow:hidden;width:400px;float:left ">
            <img  runat="server" src="images/u=945315310,1576619437&fm=11&gp=0.jpg" />
  </div>
                <div  style="float:left;margin:25px">
                   <h1>登录</h1>
                <div >        
                    <table runat="server">
                        <tr >
                            <td>
                          <asp:Label Text="用户名" CssClass="textcss" runat="server" />    
                            </td>
                            <td>
                   <asp:TextBox ID="userName" CssClass="txtboxcss" runat="server" />
                            </td>
                        </tr>
                        <tr >
                            <td>
                                 <asp:Label Text="密码"  CssClass="textcss" runat="server" />    
                            </td>
                            <td>
            <asp:TextBox ID="userPassword" CssClass="txtboxcss"  TextMode="Password" runat="server" />
                            </td>
                        </tr>
                    </table>          
                </div><br />
                <asp:Button ID="LoginButton" Text="登录"  runat="server" />
               
                <asp:LinkButton ID="ZCButton" Text="有账号就登录，没账号就注册" Font-Size="10" runat="server" />
                </div>
                </div>  
               
        </div>
      
    </form>
</body>
</html>
