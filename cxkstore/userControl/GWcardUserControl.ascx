<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GWcardUserControl.ascx.cs" Inherits="cxkstore.userControl.GWcardUserControl" %>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="../css/Gwcardstyle.css" rel="stylesheet" type="text/css" />
<link href="../css/Masterstyle.css" rel="stylesheet" type="text/css" />
<style>
  
    .btn-group {
        width: 137px;
    }
</style>
<br />
<div id="click_div" onclick="" style="width: 1000px; height: 250px; margin-top: 10px; background-color: #f1f1f1; color: #1d1d1d; margin: auto; border-radius: 5px; overflow: hidden; padding: 0">
    <div style="overflow: hidden; height: 250px; width: 300px; float: left; text-align: center; border-color: darkgray;">
        <img id="img3" runat="server" style="height: 324px" src="../images/OPPO/OPPOreno%20(1).jpg" />
    </div>
    <div style="float:left;width:700px">   
    <table style="margin:10px;height:250px; width: 674px;">
        <tr>
            <td style="width:400px">
                <div style="float: left; text-align: left">
                    <asp:Label ID="TitleLable" CssClass="title" Text="标题-产品名" runat="server" />
                    <p id="jieshao" runat="server" style="width: 422px; height: 66px; text-align: left; text-overflow: ellipsis;padding-top:20px">介绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍绍介绍介绍</p>
                </div>
            </td>
            <td>

                <div  style="text-align:center">
                    <div style="width:auto;float:right" >
                        <button type="button" class="btncss_m_black" style="width:50px;height:30px;float:left "> - </button>      
                        <input type="text" class="form-control" placeholder="1" style="text-align: center;width:50px; height: 30px;float:left">     
                        <button type="button" class="btncss_m_black" style="width:50px;height:30px;float:left"> + </button>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <ul class="pager" style="color: #3e3e3e; margin-left: -40px; margin-top:0;padding-top:0;width: 300px">
                    <li><a>坤坤绿</a></li>
                    <li><a>8G+128GB</a></li>
                </ul>
            </td>
            <td>
                <div style="text-align:right">
                      <label  class="jiage" style="font-size:20px;padding-bottom-10px;margin-bottom:-10px">RMB</label><br />
                     <label id="JiageLable" class="jiage" style="bottom:0;">2333元</label>
                </div>
            </td>
        </tr>
    </table>

    </div>
 


        <!--<asp:Label ID="JiageLable" CssClass="jiage" Text="2333元"  runat="server" />-->

</div>
