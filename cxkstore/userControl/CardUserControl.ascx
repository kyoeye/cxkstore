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
        font-weight:300;
        color:orangered;
    }
</style>
<div  style="width: 1000px; height: 250px; background-color: #f1f1f1; color: #1d1d1d; margin: auto; border-radius: 5px; overflow: hidden" >
           <div style="overflow: hidden; height: 250px; width: 300px; float: left; text-align: center;border-color:darkgray">
                            <asp:Image ID="img" ImageUrl="~/images/mainpage/wp.jpg" runat="server" Height="324px"/>
                       </div>
        <div style="float:left;margin:20px;width:442px">
                  <asp:Label ID="TitleLable" CssClass="title" Text="标题-产品名"     runat="server"/>
            <p id="jieshao" runat="server" style="width:422px; height: 139px;">介绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍</p>
        </div>
    <div style="float:right;margin:200px 10px 10px 10px">
                  <asp:Label ID="JiageLable" CssClass="jiage" Text="2333元"     runat="server"/>
    </div>

</div>    