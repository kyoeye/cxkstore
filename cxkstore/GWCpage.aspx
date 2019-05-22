<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master"  CodeBehind="GWCpage.aspx.cs" Inherits="cxkstore.GWCpage" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html>
  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>                                                              
        <div>
            <asp:GridView ID="gvProduct" runat="server" AllowCustomPaging="true" AutoGenerateColumns="false" DataKeyNames="ProductId" DataSourceID="idsProduct" PageSize="5" >
             <Columns>
                 <asp:TemplateField>
                     <ItemTemplate>
                         <asp:CheckBox ID="chkItem" runat="server" />
                     </ItemTemplate>
                     <HeaderTemplate>

                     </HeaderTemplate>
                 </asp:TemplateField>
            
             </Columns>
            </asp:GridView>
             <asp:Button runat="server" Text="删除"  OnClick="Unnamed_Click"/>
             <asp:Button runat="server" Text="清空购物车" />
            <asp:Button runat="server" Text="结算" />
            <asp:Button runat="server" Text="重新计算" />
        </div>
</body>
</html>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .datable {}
    </style>
</asp:Content>
