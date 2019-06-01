<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master" CodeBehind="Gouwuchepage.aspx.cs" Inherits="cxkstore.Gouwuchepage" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html>
    <head >
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="../css/CXKstyle.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
        <title></title>
    </head>
    <body>
     <div style="width:1000px;margin:auto" >
         <br />
         <br />
         <br />
         <h1 style="margin-top:50px; font-size:40px;font-family:'Microsoft YaHei';font-weight:600; margin-left: 10px; margin-right: 10px; margin-bottom: 10px;margin:auto">这是您购物车里的商品</h1>
        <label id="Lable_tost" runat="server">当前没有商品</label>

         <br />
            <ul id="Ul1" style="padding-left:0"  runat="server" />    
         <br />
             <div style="height:70px;width:100%">            
                <div style="width:auto;height:100%;padding:15px 20px 0 20px;float:right">                    
                      <asp:Button ID="goumai_btn" Text="一键购买" runat="server"   OnClick="goumai_btn_Click"  CssClass="btncss_black" />
                </div>
            </div>
         </div>
    </body>
    </html>
</asp:Content>
