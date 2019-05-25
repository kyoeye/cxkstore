<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master" CodeBehind="Mainpage.aspx.cs" Inherits="cxkstore.Mainpage" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../css/CXKstyle.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div style="text-align: center">
            <div style="text-align: center; height: 200px; background-repeat: no-repeat; background-color: gray; background-image: url(images/mainpage/wp.jpg); background-position: center">
                <div style="height: 200px; width: 700px; margin: auto; text-align: center;">
                    <label style="font-size: 40px; font-family: 'Microsoft YaHei'; line-height: 200px; color: white; /* float: left; *//* width: 500px; *//* margin: auto; *//* margin-left: auto; *//* text-align: justify; *//* max-width: max-content; *//* position: initial; */">嘿，你想要的这里都没有</label>
                </div>

            </div>

            <div style="text-align: center; width: 1000px; margin: auto; border-radius: 5px;">
                <h1 class="texttitle" style="margin: 30px;">蔡徐坤，出来打球</h1>
                
                <!--啊-->
                <div style="text-align: center;">
                    <div style="width: 1000px; height: 400px; background-color: #f1f1f1; color: #1d1d1d; margin: auto; border-radius: 5px; overflow: hidden">
                        <div style="overflow: hidden; height: inherit; width: 500px; float: left; text-align: center">
                            <img src="images/u=945315310,1576619437&amp;fm=11&amp;gp=0.jpg" style="width: 700px;">
                        </div>
                        <div style="float: right; text-align: right; width: 50px; height: 400px; margin: auto;">
                            <asp:Button runat="server" ID="ContentPlaceHolder1_LoginButton1" Text="那么哪里可以买到呢" CssClass="btncss_black_L"></asp:Button>
                        </div>
                        <div style="float: right; width: 445px; height: 395px; margin: auto; text-align: left">
                            <div style="width: 395px; height: 395px; margin: auto;">
                                <h1 class="texttitle">练习两年半
                                </h1>
                                <p class="textzw">
                                    占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位占位
                                </p>
                            </div>
                            <br>
                        </div>
                    </div>
                </div>
                <br />
                <!--显示手机品牌-->
                <div class="grid">
                    <table style="width: 100%; border: 0px; empty-cells: hide; padding: 5px;">
                        <tr>
                            <td>苹果</td>
                            <td>小米</td>
                            <td>华为</td>
                            <td>一加</td>
                            <td>锤子</td>
                        </tr>
                        <tr>
                            <td>oppo</td>
                            <td>vivo</td>
                            <td>红米</td>
                            <td>荣耀</td>
                            <td>诺基亚</td>
                        </tr>
                    </table>
                </div>
                <br />
                <!--模块二-->
                <h1 class="texttitle" style="margin: 30px;">钥匙两块一把您配吗？</h1>

            </div>
        </div>
    </body>
    </html>
</asp:Content>
