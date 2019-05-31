<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GYSGL.aspx.cs" Inherits="cxkstore.Properties.GYSGL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
   
        .griditem{
            text-wrap:normal;
        }
        .auto-style5 {
            height: 38px;
        }
        .auto-style10 {
            height: 33px;
            width: 281px;
        }
        .auto-style12 {
            width: 562px;
            height: 187px;
        }
        .auto-style16 {
            height: 36px;
        }
        .auto-style18 {
            height: 30px;
            width: 277px;
        }
        .auto-style19 {
            height: 33px;
            width: 278px;
        }
        .auto-style21 {
            height: 36px;
            width: 161px;
        }
        .auto-style23 {
            height: 38px;
            width: 161px;
        }
      
        .auto-style24 {
            height: 34px;
            width: 161px;
        }
        .auto-style25 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="gysid" DataSourceID="SqlDataSource1" Height="199px" Width="1379px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="gysid" HeaderText="供应商编号" InsertVisible="False" ReadOnly="True" SortExpression="gysid" />
                    <asp:BoundField DataField="gysname" HeaderText="供应商名" SortExpression="gysname" />
                    <asp:BoundField DataField="gysaddress" HeaderText="供应商地址" SortExpression="gysaddress" />
                    <asp:BoundField DataField="gysphonenum" HeaderText="供应商电话" SortExpression="gysphonenum" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CXKdbConnectionString %>" DeleteCommand="DELETE FROM [GYSxinxi] WHERE [gysid] = @original_gysid AND [gysname] = @original_gysname AND (([gysaddress] = @original_gysaddress) OR ([gysaddress] IS NULL AND @original_gysaddress IS NULL)) AND (([gysphonenum] = @original_gysphonenum) OR ([gysphonenum] IS NULL AND @original_gysphonenum IS NULL))" InsertCommand="INSERT INTO [GYSxinxi] ([gysname], [gysaddress], [gysphonenum]) VALUES (@gysname, @gysaddress, @gysphonenum)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [gysid], [gysname], [gysaddress], [gysphonenum] FROM [GYSxinxi]" UpdateCommand="UPDATE [GYSxinxi] SET [gysname] = @gysname, [gysaddress] = @gysaddress, [gysphonenum] = @gysphonenum WHERE [gysid] = @original_gysid AND [gysname] = @original_gysname AND (([gysaddress] = @original_gysaddress) OR ([gysaddress] IS NULL AND @original_gysaddress IS NULL)) AND (([gysphonenum] = @original_gysphonenum) OR ([gysphonenum] IS NULL AND @original_gysphonenum IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_gysid" Type="Int32" />
                    <asp:Parameter Name="original_gysname" Type="String" />
                    <asp:Parameter Name="original_gysaddress" Type="String" />
                    <asp:Parameter Name="original_gysphonenum" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="gysname" Type="String" />
                    <asp:Parameter Name="gysaddress" Type="String" />
                    <asp:Parameter Name="gysphonenum" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="gysname" Type="String" />
                    <asp:Parameter Name="gysaddress" Type="String" />
                    <asp:Parameter Name="gysphonenum" Type="String" />
                    <asp:Parameter Name="original_gysid" Type="Int32" />
                    <asp:Parameter Name="original_gysname" Type="String" />
                    <asp:Parameter Name="original_gysaddress" Type="String" />
                    <asp:Parameter Name="original_gysphonenum" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
              <br />
            <div style="width:100px; text-align:center;margin:auto">
            <p>添加供应商</p>
            </div>
            <table style="text-align:left;margin:auto" class="auto-style12">
                <tr>
                    <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 供应商名</td>
                    <td class="auto-style16">
                        <input type="text" id="gysname" name="gysname" class="auto-style10" runat="server" />
                        </td>
                </tr>
                  <tr>
                    <td class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp; 供应商地址</td>
                    <td class="auto-style25">
                        <input type="text" id="gysaddress" name="gysaddress"  class="auto-style19" runat="server" />
                    </td>
                </tr>
                  <tr>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp; 供应商电话</td>
                    <td class="auto-style5">
                        <input type="text" id="gysphonenum" name="gysphonenum"  class="auto-style18" runat="server" />
                    </td>
                </tr>
            </table>
              <div style="width:100px; text-align:center;margin:auto">
                  <br />
                  <asp:Button ID="Button1" runat="server" Text="确定添加" OnClick="Button1_Click" BackColor="#9966ff" Height="39px" Width="109px"/>
            </div>
        </div>
    </form>
</body>
</html>
