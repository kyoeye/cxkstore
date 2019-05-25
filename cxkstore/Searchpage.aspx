<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Master1.Master" CodeBehind="Searchpage.aspx.cs" Inherits="cxkstore.Searchpage" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="../css/CXKstyle.css" rel="stylesheet" type="text/css" />
    <style>
            .zw{
        font-family:'Microsoft YaHei';
        font-weight:400;
        font-size:16px;
        color:#534e4e;
        margin-top:40px;
        margin-bottom:20px;
        letter-spacing:2px;
        text-wrap:normal
    }
                .a_css{
         height:40px;
         width:70px;
         display:inline-block;
         margin:0 auto;
         text-align:center;
         line-height:45px;
    }
        .inputsty{
           height:40px;
           width:400px;
           padding:0;
           color:#534e4e;
           margin:0 auto;
           font-size:24px;       
           border-width:0px;
           font-family:'Microsoft YaHei';
           border-bottom:0 #2e2e2e ;
           background-color:#f3f3f3
       }
        .b{
            margin:0
        }
    </style>
</head>
<body>
    <div style="text-align:center">
        <div style="margin:auto;margin-bottom:20px;margin-top:20px;Width:480px; Height:45px">        
            <input type="text" id="search_textbox" name="search_textbox"  class="inputsty" style="float:left" runat="server"/> 
                  <a id="gga" style="background-color:#2e2e2e;border-bottom:0 #2e2e2e;float:left"  href="~/Searchpage.aspx" class="a_css" onserverclick="gga_ServerClick" runat="server">
                        <asp:Image  Height="18px" CssClass="img"  ImageUrl="~/images/icon/sousuo.png"  runat="server"/>
                    </a>
</div>
        <asp:Label ID="Tostlable" Text="抱歉，这个真没有" Visible="false" CssClass="zw" runat="server" />
         <ul id="Ul1" style="padding-left:0"  runat="server" />           
    </div>
</body>
</html>
    </asp:Content>
