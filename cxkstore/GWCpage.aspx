<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master"  CodeBehind="GWCpage.aspx.cs" Inherits="cxkstore.GWCpage" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html>
  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
    <title></title>
</head>
<body>                                                              
        <div style="width:500px; height:500px;margin:auto">

            <asp:GridView ID="gvproduct" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="gwcid" DataSourceID="ldsproduct" Width="254px">
                <Columns>
                    <asp:BoundField DataField="gwcid" HeaderText="gwcid" ReadOnly="True" SortExpression="gwcid" />
                    <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                    <asp:BoundField DataField="phonenum" HeaderText="phonenum" SortExpression="phonenum" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="ldsproduct" runat="server" ContextTypeName="cxkstore.CXKdbmlDataContext" EntityTypeName="" OnSelecting="ldsproduct_Selecting" TableName="GWCtable"></asp:LinqDataSource>
        </div>
</body>
</html>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .datable {}
    </style>
</asp:Content>
