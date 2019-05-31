<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master" CodeBehind="DDpage.aspx.cs" Inherits="cxkstore.DDpage" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="../css/CXKstyle.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="css/DDstyle.css" rel="stylesheet" type="text/css" />
        <title></title>
    </head>
    <body>
        <div style="width: 1000px; margin: auto;text-align:left">
            <br />
            <br />
            <br />
            <h1 style="margin-top: 50px; font-size: 40px; font-family: 'Microsoft YaHei'; font-weight: 600; margin-left: 10px; margin-right: 10px; margin-bottom: 10px; margin: auto">订单</h1>
            <label id="Lable_ddid" runat="server">快点付款，快点把你的钱都交出来</label>
            <br />
             <ul id="Ul3" style="padding-left:0"  runat="server" />    
             <br />
           
            
        <div style="height: 70px; width: 100%">
            <div style="width: auto; height: 100%; padding: 15px 20px 0 20px; float: right">
                <asp:Button ID="goumai_btn" Text="结算" runat="server" CssClass="btncss_black" />
            </div>
        </div>
             <div style="width:1000px" >
             <h1 style="margin-top: 50px; font-size: 40px; font-family: 'Microsoft YaHei'; font-weight: 600; margin-right: 10px; margin-bottom: 10px; margin: auto">已完成</h1>
            <label id="Label1" runat="server">现在属于您了</label>
            <br />
             <ul id="Ul4" style="padding-left:0"  runat="server" />    
            </div>
        </div>
    </body>
    </html>
</asp:Content>

