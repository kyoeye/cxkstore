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
<!-- 用不到了
<script type="text/javascript">
    /*用不到了*/
    function myfunction() {          
        var u = <%=jump%>
        location.href =  'Mainpage.aspx';
       }
    </script>
-->
<div id="click_div"   onclick="location.href = '<%=jump%>';"  style="width: 1000px; height: 250px; background-color: #f1f1f1; color: #1d1d1d; margin: auto; border-radius: 5px; overflow: hidden" >
 <!--jump是在后台拼接好的跳转url，用js的做的跳转-->
    <div style="overflow: hidden; height: 250px; width: 300px; float: left; text-align: center;border-color:darkgray">
                            <asp:Image ID="img" ImageUrl="~/images/mainpage/wp.jpg" runat="server" Height="324px"/>
                       </div>
        <div  style="float:left;margin:20px;width:442px">
                  <asp:Label ID="TitleLable"  CssClass="title" Text="标题-产品名"     runat="server"/>
            <p id="jieshao"   style="width:422px; height: 139px;">介绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍</p>                   
            </div>
    <div  style="float:right;margin:200px 10px 10px 10px">
        <asp:Button ID="fzbtn_div_click_Click" Text="" OnClick="Fzbtn_div_click_Click" ValidationGroup="btnOther" runat="server" />
        <asp:Button Text="text" OnClick="Unnamed_Click" runat="server" />
                  <asp:Label ID="JiageLable" CssClass="jiage" Text="2333元"     runat="server"/>
    </div>

</div>    