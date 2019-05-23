<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master" CodeBehind="XiangQingpage.aspx.cs" Inherits="cxkstore.XiangQingpage" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .image{
            width:600px;
            height:800px;
        }
    </style>
</head>
<body>
 <div style="width:1000px;margin:auto;background-color:white;">
     <div style="background-color:antiquewhite;">
     <div style="width:600px; height:800px; background-color:white">
         <asp:Image ImageUrl="imageurl"  runat="server" />
     </div>

     </div>
 </div>
</body>
</html>
   </asp:Content>
