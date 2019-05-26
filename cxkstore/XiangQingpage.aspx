<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master" CodeBehind="XiangQingpage.aspx.cs" Inherits="cxkstore.XiangQingpage" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link href="css/XQstyle.css" rel="stylesheet" type="text/css" />
        <link href="../css/CXKstyle.css" rel="stylesheet" type="text/css" />
        <style>
            .image {
                width: 600px;
                height: 800px;
            }
        </style>
    </head>
    <body style="margin:0">
        <div style="width: 1020px; ; margin: auto; background-color: white;">
            <div>
                <div style="height: 50px; vertical-align: central; margin: 20px">
                    <asp:Label ID="phonename_label" CssClass="Lable_Title" Text="手机名字" runat="server" />
                </div>
                <div style="width: 1020px; ; margin: auto; background-color: white;">
                    <div style="width: 550px;float:left; height: 700px">
                        <table runat="server">
                            <tr>
                                <td>
                                    <div id="imgg" runat="server" style="display: table-cell; width: 550px; vertical-align: central; height: 500px; overflow: hidden; margin: auto; text-align: center; background-color: white; float: left">
                                        <img style="margin: auto; position: center; height: 500px" src="~/images/OPPO/OPPOreno (1).jpg" runat="server" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" Text="22" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 400px; height: 800px; float: left; margin: 10px; margin-left: 30px">
                        <asp:Label ID="Title_label" CssClass="Lable_Title" Text="购买：CK测试12" runat="server" />
                    </div>
                </div>
          
            
            </div>
       
        </div>

    </body>
    </html>
</asp:Content>
