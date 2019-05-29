<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GWcardUserControl.ascx.cs" Inherits="cxkstore.userControl.GWcardUserControl" %>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="../css/Gwcardstyle.css" rel="stylesheet" type="text/css" />
<style>
  
</style>
<div id="click_div" onclick="" style="width: 1000px; height: 250px; margin-top: 10px; margin-bottom: 10px; background-color: #f1f1f1; color: #1d1d1d; margin: auto; border-radius: 5px; overflow: hidden; border-bottom: 3px solid  #3e3e3e; padding: 10px 0 20px 0">
    <div style="overflow: hidden; height: 250px; width: 300px; float: left; text-align: center; border-color: darkgray;">
        <img id="img3" runat="server" style="height: 324px" src="../images/OPPO/OPPOreno%20(1).jpg" />
    </div>
    <div style="float: left; margin: 20px; width: 442px; height:200px;text-align: left">
        <asp:Label ID="TitleLable" CssClass="title" Text="标题-产品名" runat="server" />
        <p id="jieshao" runat="server" style="width: 422px; height: 66px; text-align: left;text-overflow:ellipsis">介绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍</p>
        <ul class="pager" style="color:#3e3e3e;margin-left:0">
            <li><a >手机颜色</a></li>
          <li><a >手机配置</a></li>
        </ul>
     </div>
    <div style="float: right; margin: 10px 10px 10px 10px;text-align:center; height: 252px;">
        <div class="btn-group" role="group" aria-label="...">
            <button type="button" class="btn btn-default">-</button>
             <input type="text" class="form-control" placeholder="1" style="width:40px;text-align :center">
            <button type="button" class="btn btn-default">+</button>
        </div>
        <label id="JiageLable" class="jiage" style="position:absolute;bottom:0;">2333元</label>
        <!--<asp:Label ID="JiageLable" CssClass="jiage" Text="2333元"  runat="server" />-->
    </div>
</div>
