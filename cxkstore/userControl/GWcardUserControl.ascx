<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GWcardUserControl.ascx.cs" Inherits="cxkstore.userControl.GWcardUserControl" %>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="../css/Gwcardstyle.css" rel="stylesheet" type="text/css" />
<style>
  
    .btn-group {
        width: 137px;
    }
  
</style>
<br />
<div id="click_div" onclick="" style="width: 1000px; height: 250px; margin-top: 10px; background-color: #f1f1f1; color: #1d1d1d; margin: auto; border-radius: 5px; overflow: hidden; padding: 0">
    <div style="overflow: hidden; height: 250px; width: 300px; float: left; text-align: center; border-color: darkgray;">
        <img id="img3" runat="server" style="height: 324px" src="../images/OPPO/OPPOreno%20(1).jpg" />
    </div>
    <table style="margin:10px;width:400px;height:130px">
        <tr>
            <td>
                <div style="float: left; text-align: left">
                    <asp:Label ID="TitleLable" CssClass="title" Text="标题-产品名" runat="server" />
                    <p id="jieshao" runat="server" style="width: 422px; height: 66px; text-align: left; text-overflow: ellipsis">介绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍</p>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <ul class="pager" style="color: #3e3e3e; margin-left: 0; margin-top:0;padding-top:0;width: 300px">
                    <li><a>手机颜色</a></li>
                    <li><a>手机配置</a></li>
                </ul>
            </td>
        </tr>
    </table>
 
    <div style="float: right;text-align:center; margin-top: 0px;">
        <div class="btn-group" role="group" style="width:auto;margin:auto;" aria-label="...">
            <button type="button" class="btn btn-default">-</button>
             <input type="text" class="form-control" placeholder="1" style="width:40px;text-align :center">
            <button type="button" class="btn btn-default">+</button>
        </div>
        <br />
        <label id="JiageLable" class="jiage" style="bottom:0;">2333元</label>
        <!--<asp:Label ID="JiageLable" CssClass="jiage" Text="2333元"  runat="server" />-->
    </div>
</div>
