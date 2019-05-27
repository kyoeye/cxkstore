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

            .titletext {
                line-height: 30px;
                font-family: 'Microsoft YaHei';
                font-weight: 400;
            }
        </style>
    </head>
    <body>
        <div style="background-color:white">
            <div style="width: 100%; height: 60px; vertical-align: central; line-height: 60px;  background-color: #f3f3f3">
                <asp:Label ID="phonename_label" CssClass="Lable_titletext" Text="手机名字" runat="server" />
            </div>
                <div style="width: 1020px; ; margin: auto; background-color: white;">
                    <div style="width: 550px;float:left; height: 700px">
                        <table style="height:700px" runat="server">
                            <tr>
                                <td>
                                    <div id="imgg" runat="server" style="display: table-cell; width: 550px; vertical-align: central; height: 500px; overflow: hidden; margin: auto; text-align: center; background-color: white; float: left">
                                        <img style="margin: auto; position: center; height: 500px" src="~/images/OPPO/OPPOreno (1).jpg" runat="server" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div style="background-color:#f3f3f3;border-radius:5px;padding:10px;margin:10px">
                                        <a style="background-color:#2e2e2e;color:white;padding: 7px 15px 5px 15px;margin: -30px 5px 10px 0;width:auto;height:60px;border-radius:5px">                                          
                                    <asp:Label ID="Label4" CssClass="Lable_pzxx_Title"  Text="配置信息" runat="server" />
                                        </a>
                                        <br />
                                        <br />
                                <asp:Label ID="Label1" CssClass="Lable_zw" Text="双脚离地了，病毒就关闭了，聪明的智商又占领高地了，123双脚离地了，病毒就关闭了，聪明的智商又占领高地了" runat="server" />                        
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 400px; height: 800px; float: left; margin: 10px; margin-left: 30px">
                        <asp:Label ID="Title_label"  CssClass="Lable_Title" Text="购买：CK测试12" runat="server" /><br/>
                        <a style="background-color:#2e2e2e;color:white;padding: 7px 15px 5px 15px;border-bottom:2px 0 0 0;margin: 10px 5px 10px 0;width:auto;height:60px;border-radius:5px">
                            <asp:Label ID="Label3" CssClass="Lable_pp" Text="手机品牌自动适应长度" runat="server" />
                        </a>
                        <br />
                        <asp:Label ID="Label2" CssClass="Lable_zw" Text="双脚离地了，病毒就关闭了，聪明的智商又占领高地了，123" runat="server" />
                      <br />
                        <br />
                        <br />
                      
                   
                        </div>
                </div>      
            <div style="height:70px;background-color:#f3f3f3;position:fixed;bottom:0px;width:100%">            
                <asp:Label ID="Label5" CssClass="Lable_titletext2" Text="手机名字" runat="server" />
                <div style="width:auto;height:100%; line-height:70px;padding:0 20px 0 20px;background-color:#f3f3f3;float:right">
                       <asp:Button Text="添加到购物车"  runat="server"   class="btncss_xq_black" />
                      <asp:Button Text="一键购买"  BackColor="#ff3535" runat="server"   class="btncss_xq_black" />
                </div>
            </div>
        </div>

    </body>
    </html>
</asp:Content>
