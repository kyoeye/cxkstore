<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master"  CodeBehind="GWCpage.aspx.cs" Inherits="cxkstore.GWCpage" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html>
  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
    <title></title>
</head>
<body>                                                              
        <div style="width:600px; height:600px;margin:auto">
        <table class="auto-style9">
            <td class="auto-style5">
                &nbsp; &nbsp;<th class="auto-style1">
                    编号
                </th>
                 <th class="auto-style4">
                    手机名
                </th>
                  <th class="auto-style6" >
                    手机价格
                </th>
                  <th class="auto-style7" >
                    数量
                </th>
                  <th class="auto-style8" >
                    小计
                </th>
            </td>
        </table>
        </div>
</body>
</html>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .datable {}
        .auto-style1 {
            width: 104px;
            height: 20px;
        }
        .auto-style4 {
            width: 91px;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
        }
        .auto-style6 {
            width: 73px;
            height: 20px;
        }
        .auto-style7 {
            width: 70px;
            height: 20px;
        }
        .auto-style8 {
            width: 80px;
            height: 20px;
        }
        .auto-style9 {
            width: 504px;
        }
    </style>
</asp:Content>
