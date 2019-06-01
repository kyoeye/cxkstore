<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master" CodeBehind="Mainpage.aspx.cs" Inherits="cxkstore.Mainpage" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../css/CXKstyle.css" rel="stylesheet" type="text/css" />
        <style>
            .textt{
                font-family:'Microsoft YaHei';
            }
        </style>
    </head>
    <body>
        <div style="text-align: center">
            <div style="text-align: center; height: 200px; background-repeat: no-repeat; background-color: gray; background-image: url(images/mainpage/wp.jpg); background-position: center">
                <div style="height: 200px; width: 700px; margin: auto; text-align: center;">
                    <label style="font-size: 40px; font-family: 'Microsoft YaHei';  margin:auto;line-height: 200px; color: white;">嘿，你想要的这里都有</label>
                </div>
            </div>
            <div style="text-align: center; width: 1000px; margin: auto; border-radius: 5px;">
                <h1 class="texttitle" style="margin: 30px;">推荐</h1>
                
                <!--啊-->
                <div style="text-align: center;">
                    <div style="width: 1000px; height: 400px; background-color: #f1f1f1; color: #1d1d1d; margin: auto; border-radius: 5px; overflow: hidden">
                        <div style="overflow: hidden; height: inherit; width: 500px; float: left; text-align: center">
                            <img src="images/20190531_215524_997[1].jpg" style="width: 700px;">
                        </div>
                        <div style="float: right; text-align: right; width: 50px; height: 400px; margin: auto;">
                              <asp:Button runat="server" ID="ContentPlaceHolder1_LoginButton1" Text=">" CssClass="btncss_black_L"></asp:Button>
                        </div>
                        <div style="float: right; width: 445px; height: 395px; margin: auto; text-align: left">
                            <div style="width: 395px; height: 395px; margin: auto;">
                                <h1 class="texttitle">荣耀20系列现场上手
                                </h1>
                                <p class="textzw">
                                  外观设计方面，荣耀20 Pro采用了四曲面3D玻璃机身设计。
性能方面，荣耀20系列搭载麒麟980处理器，支持GPU Turbo 3.0，虚拟9.1环绕声，内置全新EROFS文件系统，搭配最大8GB内存、最大256GB存储。荣耀20 Pro内置4000mAh电池，荣耀20则内置3750mAh电池。
拍照方面，荣耀20系列均前置3200万像素摄像头。荣耀20 Pro后置四摄，包括4800万像素主摄像头IMX586，和800万像素3倍光变远摄镜头，还有一个1600万像素超广角镜头和一个专用的200万像素微距摄像头，该机的DxOMark评分达111分。
荣耀20也后置四摄，分别是4800万像素主摄像头（f/1.8光圈）、1600万像素超广角摄像头、200万像素深度摄像头和200万像素微距摄像头。
                                </p>
                            </div>
                            <br>
                        </div>
                    </div>
                </div>
                <br />
                <!--显示手机品牌-->
                <script>
                    function click(obj) {
                        var a = this.context.innerHTML;
                           alert("你点了"+a);
                    }
                </script>
                <div class="grid">
                    <table style="width: 100%; border: 0px; empty-cells: hide; padding: 5px;">
                        <tr>
                            <td class="textt" onclick="click(this)">苹果</td>
                            <td class="textt" onclick="click(this)">小米</td>
                            <td class="textt" onclick="click(this)">华为</td>
                            <td class="textt" onclick="click(this)">一加</td>
                            <td class="textt" onclick="click(this)">坚果</td>
                        </tr>
                        <tr >
                            <td class="textt" onclick="click(this)">oppo</td>
                            <td class="textt" onclick="click(this)">vivo</td>
                            <td class="textt" onclick="click(this)">红米</td>
                            <td class="textt" onclick="click(this)">荣耀</td>
                            <td class="textt" onclick="click(this)">诺基亚</td>
                        </tr>
                    </table>
                </div>
                <br />
                <!--模块二-->
                <h1 class="texttitle" style="margin: 30px;">还有些什么呢？</h1>
                <br />
            <ul id="Ul1" style="padding-left:0"  runat="server" />    
                
            </div>
        </div>
    </body>
    </html>
</asp:Content>
