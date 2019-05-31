<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DDitemUserControl.ascx.cs" Inherits="cxkstore.userControl.DDitemUserControl" %>
<link href="../css/CXKstyle.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<style>
    .lab{
        margin-left:5px;
        margin-right:5px;
        font-family:'Microsoft YaHei'
    }
</style>
<br />
<div id="click_div" style="width: 1000px; height: 60px;  background-color: #f5f5f5; color: #1d1d1d; margin: auto; border-radius: 5px; overflow: hidden;border:1px solid #3e3e3e" >      
    <table>
        <tr>
            <td style="line-height:60px;width:850px">
                <asp:Label ID="label_dname" Text="手机名" CssClass="lab" runat="server" />
                <asp:Label ID="label_dcolor" Text="颜色" CssClass="lab"  runat="server" />
                <asp:Label ID="label_dpeizhi" Text="配置" CssClass="lab"  runat="server" />
            </td>
               <td style="line-height:60px;width:149px;text-align:right;padding-right:10px">
                <asp:Label ID="label_jiage" Text="2333元" CssClass="lab"  runat="server" />
                <span  runat="server" id="span_shuliang" class="label label-default">New</span>
            </td>
        </tr>
    </table>
</div>     
