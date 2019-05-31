<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master" CodeBehind="XiangQingpage.aspx.cs" Inherits="cxkstore.XiangQingpage" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link href="css/XQstyle.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
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
                                <asp:Label ID="Label1_peizhixinxi" CssClass="Lable_zw" Text="双脚离地了，病毒就关闭了，聪明的智商又占领高地了，123双脚离地了，病毒就关闭了，聪明的智商又占领高地了" runat="server" />                        
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
                        <asp:Label ID="Label2_jieshao" CssClass="Lable_zw" Text="双脚离地了，病毒就关闭了，聪明的智商又占领高地了，123" runat="server" />
                      <br />
                        <br />
                        <h3>颜色</h3>
                        <div id="buttonlist" class="list-group">
                            <% foreach (string ttt in mulist2)
                                {%>
                           <button id="gsf" type="button"  class="list-group-item"  onclick="tsts('<%=ttt%>')"  ><%=ttt%></button>                      
                            <%} %>
                            <script type="text/javascript">
                                var color_seleted;
                                var peizhi_seleted;
                                var jiag;
                        
                                function tsts(str) {
                                    document.getElementById('Label7').innerHTML = str;//底部显示选择的颜色
                                    document.getElementById('Label5').innerHTML = "";//清空选择暗示重新选择，ajax操作在下面
                                    color_seleted = encodeURI(str);                   
                                }             
                                function pzset(str) {
                                    document.getElementById('Label5').innerHTML = str;//底部显示选择的配置
                                   peizhi_seleted = encodeURI(str);
                                    var ajx = new XMLHttpRequest();
                                    ajx.open("get", "XiangQingpage.aspx?peizhi=" + peizhi_seleted + "&pcolor=" + color_seleted, true); //不知道要不要带上颜色，不过颜色后台有存
                                    ajx.send();
                                }
                                  function addtobag() {
                                      var tts = encodeURI("true");
                                      var confirmPrice = document.getElementById("Label1").innerText;
                                      var pn = encodeURI(confirmPrice);
                                      var ajx = new XMLHttpRequest();
                                      ajx.open("get", "XiangQingpage.aspx?peizhi=" + peizhi_seleted + "&gettogwc=" + tts + "&pname=" + pn + "&pcolor=" + color_seleted, true); //带上配置吧。。pageload里有个判断……会把ajax刷新掉
                                      ajx.send();
                                      alert("添加到购物车成功啦(￣▽￣)");
                                }
                                function Buy_btn_Click() {
                                      var tts = encodeURI("true");
                                    var confirmPrice = document.getElementById("Label1").innerText;
                                    jiag == document.getElementById("jg").innerText;
                                      var pn = encodeURI(confirmPrice);
                                    var ajx = new XMLHttpRequest();
                                    ajx.open("get", "XiangQingpage.aspx?peizhi=" + peizhi_seleted + "&gettobuy=" + tts + "&pname=" + pn + "&pcolor=" + color_seleted + "&jiage=" + jiag, false); //带上配置吧。。pageload里有个判断……会把ajax刷新掉
                                    ajx.send();                               
                                        var a = ajx.responseText;
                                      alert("执行111(￣▽￣)"+a);

                                    jump(a);
                                    return false;
                                }
                            
                            
                                function jump(ur) {
                                      alert("执行(￣▽￣)"+ur);
                                    window.location.href = ur;
                                    return false;
                                }
                            </script>                   
                        </div>                     
                        <br />
                       <h3>规格</h3>
                        <div id="buttonlist2" class="list-group">
                            <% foreach (string ppp in peizhi_list)
                                {%>
                           <button  type="button"  class="list-group-item"  onclick="pzset('<%=ppp%>')"  ><%=ppp%></button>                      
                            <%} %>              
                        </div>              
                        <br/>
                        <div style="width:100px;float:right;text-align:right;margin-right:100px">
                             <label id="jg"  class="Lable_titletext2" style="font-weight:500" ><%=pjiage%></label>               
                        </div>
                        </div>
                </div>      
            <div style="height:70px;background-color:#f3f3f3;position:fixed;bottom:0px;width:100%">            
                <label id="Label1"  class="Lable_titletext2"><%=pname%></label>               
                <asp:Label ID="Label6" Visible="false" CssClass="Lable_titletext2" Text="手机名字" runat="server" />
                <label id="Label7"  class="Lable_titletext_yspz" ></label>
                <label id="Label5" class="Lable_titletext_yspz" ></label>
                <div style="width:auto;height:100%;padding:15px 20px 0 20px;background-color:#f3f3f3;float:right">
                       <button id="addtobag_btn"   type="button"   onclick="addtobag()"  class="btncss_xq_black" >添加到购物车</button>
                      <button id="buy_btn"  onclick="Buy_btn_Click(); return false;"    style="background-color:#ff3535"   class="btncss_xq_black" >一键购买</button>
                </div>
            </div>
        </div>

    </body>
    </html>
</asp:Content>
