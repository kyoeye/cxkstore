<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CardUserControl.ascx.cs" Inherits="cxkstore.userControl.CardUserControl" %>
<style>
    .title{
        font-family:'Microsoft YaHei';
        font-size:35px;
        font-weight:700;  
    }
       .jiage{
        font-family:'Microsoft YaHei';
        font-size:35px;
        font-weight:700;
        color:orangered;
    }
</style>
<link href="../css/CXKstyle.css" rel="stylesheet" type="text/css" />
<br />
<div id="click_div"   onclick="location.href = '<%=jump%>';"style="width: 1000px; height: 250px; margin-top:10px; margin-bottom:10px; background-color: #f1f1f1; color: #1d1d1d; margin: auto; border-radius: 5px; overflow: hidden;border:3px solid #3e3e3e" >
 <!--jump是在后台拼接好的跳转url，用js的做的跳转    5月25 QAQ 这个好像只要用onseverclick就行了。。。根本不用JS。。。-->
    <div style="overflow: hidden; height: 250px; width: 300px; float: left; text-align: center;border-color:darkgray">
                              <img id="img3" runat="server" style="height:324px"   src="../images/OPPO/OPPOreno%20(1).jpg" />
                       </div>
        <div  style="float:left;margin:20px;width:442px;text-align:left ">
                  <asp:Label ID="TitleLable"  CssClass="title" Text="标题-产品名"     runat="server"/>
            <p id="jieshao"  runat="server"   style="width:422px; height: 139px;text-align:left">介绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍</p>                   
            </div>
    <div  style="float:right;margin:200px 10px 10px 10px">
                  <asp:Label ID="JiageLable" CssClass="jiage" Text="2333元"     runat="server"/>
        <!--
        <asp:Button Text="text"  OnClick="Unnamed_Click" CssClass="btncss_black" runat="server" />
        -->
    </div>

</div>    