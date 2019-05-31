<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DDGL.aspx.cs" Inherits="cxkstore.DDGL" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ddid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="202px" Width="1221px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="ddid" HeaderText="订单编号" InsertVisible="False" ReadOnly="True" SortExpression="ddid" />
                    <asp:BoundField DataField="phonenum" HeaderText="手机编号" SortExpression="phonenum" />
                    <asp:BoundField DataField="userid" HeaderText="用户编号" SortExpression="userid" />
                    <asp:BoundField DataField="ddtime" HeaderText="订单时间" SortExpression="ddtime" />
                    <asp:BoundField DataField="ddshuliang" HeaderText="数量" SortExpression="ddshuliang" />
                    <asp:BoundField DataField="ddzje" HeaderText="手机价格" SortExpression="ddzje" />
                    <asp:BoundField DataField="ddcolor" HeaderText="手机颜色" SortExpression="ddcolor" />
                    <asp:BoundField DataField="ddpeizhi" HeaderText="手机配置" SortExpression="ddpeizhi" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB"  HorizontalAlign="Center"/>
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CXKdbConnectionString %>" DeleteCommand="DELETE FROM [DDxinxi] WHERE [ddid] = @original_ddid AND [phonenum] = @original_phonenum AND [userid] = @original_userid AND [ddtime] = @original_ddtime AND [ddshuliang] = @original_ddshuliang AND [ddzje] = @original_ddzje AND (([ddcolor] = @original_ddcolor) OR ([ddcolor] IS NULL AND @original_ddcolor IS NULL)) AND (([ddpeizhi] = @original_ddpeizhi) OR ([ddpeizhi] IS NULL AND @original_ddpeizhi IS NULL))" InsertCommand="INSERT INTO [DDxinxi] ([phonenum], [userid], [ddtime], [ddshuliang], [ddzje], [ddcolor], [ddpeizhi]) VALUES (@phonenum, @userid, @ddtime, @ddshuliang, @ddzje, @ddcolor, @ddpeizhi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ddid], [phonenum], [userid], [ddtime], [ddshuliang], [ddzje], [ddcolor], [ddpeizhi] FROM [DDxinxi]" UpdateCommand="UPDATE [DDxinxi] SET [phonenum] = @phonenum, [userid] = @userid, [ddtime] = @ddtime, [ddshuliang] = @ddshuliang, [ddzje] = @ddzje, [ddcolor] = @ddcolor, [ddpeizhi] = @ddpeizhi WHERE [ddid] = @original_ddid AND [phonenum] = @original_phonenum AND [userid] = @original_userid AND [ddtime] = @original_ddtime AND [ddshuliang] = @original_ddshuliang AND [ddzje] = @original_ddzje AND (([ddcolor] = @original_ddcolor) OR ([ddcolor] IS NULL AND @original_ddcolor IS NULL)) AND (([ddpeizhi] = @original_ddpeizhi) OR ([ddpeizhi] IS NULL AND @original_ddpeizhi IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ddid" Type="Int32" />
                    <asp:Parameter Name="original_phonenum" Type="Int32" />
                    <asp:Parameter Name="original_userid" Type="Int32" />
                    <asp:Parameter Name="original_ddtime" Type="DateTime" />
                    <asp:Parameter Name="original_ddshuliang" Type="String" />
                    <asp:Parameter Name="original_ddzje" Type="Decimal" />
                    <asp:Parameter Name="original_ddcolor" Type="String" />
                    <asp:Parameter Name="original_ddpeizhi" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="phonenum" Type="Int32" />
                    <asp:Parameter Name="userid" Type="Int32" />
                    <asp:Parameter Name="ddtime" Type="DateTime" />
                    <asp:Parameter Name="ddshuliang" Type="String" />
                    <asp:Parameter Name="ddzje" Type="Decimal" />
                    <asp:Parameter Name="ddcolor" Type="String" />
                    <asp:Parameter Name="ddpeizhi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="phonenum" Type="Int32" />
                    <asp:Parameter Name="userid" Type="Int32" />
                    <asp:Parameter Name="ddtime" Type="DateTime" />
                    <asp:Parameter Name="ddshuliang" Type="String" />
                    <asp:Parameter Name="ddzje" Type="Decimal" />
                    <asp:Parameter Name="ddcolor" Type="String" />
                    <asp:Parameter Name="ddpeizhi" Type="String" />
                    <asp:Parameter Name="original_ddid" Type="Int32" />
                    <asp:Parameter Name="original_phonenum" Type="Int32" />
                    <asp:Parameter Name="original_userid" Type="Int32" />
                    <asp:Parameter Name="original_ddtime" Type="DateTime" />
                    <asp:Parameter Name="original_ddshuliang" Type="String" />
                    <asp:Parameter Name="original_ddzje" Type="Decimal" />
                    <asp:Parameter Name="original_ddcolor" Type="String" />
                    <asp:Parameter Name="original_ddpeizhi" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
             <asp:Button ID="Button2" runat="server" Text="手机品牌管理" Height="45px" Width="121px" BackColor="#3399ff" OnClick="Button2_Click"  />
            <br />

            <asp:Button ID="Button3" runat="server" Text="手机信息管理" Height="45px" Width="121px" BackColor="#3333ff" OnClick="Button3_Click"  />
            <br />
            <asp:Button ID="Button4" runat="server" Text="供应商管理" Height="45px" Width="121px" BackColor="#3399ff" OnClick="Button4_Click" />
            <br />
            <asp:Button ID="Button5" runat="server" Text="返回" Height="45px" Width="121px" BackColor="#3333ff" OnClick="Button5_Click" />
        </div>
    </form>
</body>
</html>

