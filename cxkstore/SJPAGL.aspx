<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SJPAGL.aspx.cs" Inherits="cxkstore.SJPAGL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
   
        .griditem{
            text-wrap:normal;
        }
        .auto-style10 {
            height: 33px;
            width: 281px;
        }
        .auto-style12 {
            width: 556px;
            height: 117px;
        }
        .auto-style16 {
            height: 36px;
        }
        .auto-style19 {
            height: 33px;
            width: 278px;
        }
        .auto-style21 {
            height: 36px;
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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="phoneId" DataSourceID="SqlDataSource1" Width="1397px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="phoneId" HeaderText="手机品牌编号" InsertVisible="False" ReadOnly="True" SortExpression="phoneId" />
                    <asp:BoundField DataField="phonebrand" HeaderText="手机品牌名" SortExpression="phonebrand" />
                    <asp:BoundField DataField="phonetext" HeaderText="手机品牌介绍" SortExpression="phonetext" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CXKdbConnectionString %>" DeleteCommand="DELETE FROM [Phonedb] WHERE [phoneId] = @original_phoneId AND (([phonetext] = @original_phonetext) OR ([phonetext] IS NULL AND @original_phonetext IS NULL)) AND [phonebrand] = @original_phonebrand" InsertCommand="INSERT INTO [Phonedb] ([phonetext], [phonebrand]) VALUES (@phonetext, @phonebrand)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [phoneId], [phonetext], [phonebrand] FROM [Phonedb]" UpdateCommand="UPDATE [Phonedb] SET [phonetext] = @phonetext, [phonebrand] = @phonebrand WHERE [phoneId] = @original_phoneId AND (([phonetext] = @original_phonetext) OR ([phonetext] IS NULL AND @original_phonetext IS NULL)) AND [phonebrand] = @original_phonebrand">
                <DeleteParameters>
                    <asp:Parameter Name="original_phoneId" Type="Int32" />
                    <asp:Parameter Name="original_phonetext" Type="String" />
                    <asp:Parameter Name="original_phonebrand" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="phonetext" Type="String" />
                    <asp:Parameter Name="phonebrand" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="phonetext" Type="String" />
                    <asp:Parameter Name="phonebrand" Type="String" />
                    <asp:Parameter Name="original_phoneId" Type="Int32" />
                    <asp:Parameter Name="original_phonetext" Type="String" />
                    <asp:Parameter Name="original_phonebrand" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
             <br />
            <div style="width:100px; text-align:center;margin:auto">
            <p>添加手机品牌</p>
            </div>
            <table style="text-align:left;margin:auto" class="auto-style12">
                <tr>
                    <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp; 手机品牌名</td>
                    <td class="auto-style16">
                        <input type="text" id="phonebrand" name="phonebrand" class="auto-style10" runat="server" />
                        </td>
                </tr>
                  <tr>
                    <td class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;手机品牌介绍</td>
                    <td class="auto-style25">
                        <input type="text" id="phonetext" name="phonetext"  class="auto-style19" runat="server" />
                    </td>
                </tr>
                 
            </table>
              <div style="width:100px; text-align:center;margin:auto">
                  <br />
                  <asp:Button ID="Button1" runat="server" Text="确定添加" BackColor="#0099cc" Height="39px" Width="109px" OnClick="Button1_Click" />
            </div>
             <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="供应商管理" Height="45px" Width="121px" BackColor="#3399ff" OnClick="Button2_Click"  />
            <br />

            <asp:Button ID="Button3" runat="server" Text="手机信息管理" Height="45px" Width="121px" BackColor="#3333ff" OnClick="Button3_Click"  />
            <br />
            <asp:Button ID="Button4" runat="server" Text="订单管理" Height="45px" Width="121px" BackColor="#3399ff" OnClick="Button4_Click" />
            <br />
            <asp:Button ID="Button5" runat="server" Text="返回" Height="45px" Width="121px" BackColor="#3333ff" OnClick="Button5_Click" />
        </div>
    </form>
</body>
</html>

