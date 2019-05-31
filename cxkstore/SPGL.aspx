<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SPGL.aspx.cs" Inherits="cxkstore.SPGL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 71px;
        }
        .griditem{
            text-wrap:normal;
        }
        .auto-style3 {
            height: 37px;
        }
        .auto-style5 {
            height: 38px;
        }
        .auto-style8 {
            height: 25px;
        }
        .auto-style10 {
            height: 29px;
        }
        .auto-style11 {
            height: 28px;
        }
        .auto-style12 {
            width: 567px;
            height: 400px;
        }
        .auto-style13 {
            height: 32px;
        }
        .auto-style16 {
            height: 36px;
        }
        .auto-style17 {
            height: 29px;
            width: 353px;
        }
        .auto-style18 {
            height: 30px;
            width: 249px;
        }
        .auto-style19 {
            height: 29px;
            width: 250px;
        }
        .auto-style20 {
            height: 37px;
            width: 161px;
        }
        .auto-style21 {
            height: 36px;
            width: 161px;
        }
        .auto-style22 {
            height: 32px;
            width: 161px;
        }
        .auto-style23 {
            height: 38px;
            width: 161px;
        }
        .auto-style25 {
            height: 27px;
        }
        .auto-style26 {
            height: 27px;
            width: 195px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvProduct" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1815px" DataKeyNames="phonenum" CssClass="auto-style1" CellPadding="4" ForeColor="#333333" GridLines="Horizontal" Height="429px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="phonenum" HeaderText="手机编号" ReadOnly="True" SortExpression="phonenum" InsertVisible="False" />
                    <asp:BoundField DataField="phoneid" HeaderText="手机品牌编号" SortExpression="phoneid" />
                    <asp:BoundField DataField="gysid" HeaderText="供应商编号" SortExpression="gysid" />
                    <asp:BoundField DataField="phonename" HeaderText="手机名" SortExpression="phonename" />
                    <asp:BoundField DataField="phoneprice" HeaderText="手机价格" SortExpression="phoneprice" />
                   <asp:BoundField DataField="pjieshao" HeaderText="手机介绍" SortExpression="pjieshao" /> 
                    <asp:BoundField DataField="pchengben" HeaderText="手机成本" SortExpression="pchengben" />
                    <asp:BoundField DataField="pkucun" HeaderText="库存" SortExpression="pkucun" />
                    <asp:BoundField DataField="pcolor" HeaderText="手机颜色" SortExpression="pcolor" />
                    <asp:BoundField DataField="ppeizhi" HeaderText="手机配置" SortExpression="ppeizhi" />
                    <asp:CommandField ShowEditButton="True"  />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center"  />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"  />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource  ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:CXKdbConnectionString %>" 
                SelectCommand="SELECT [phonenum], [phoneid], [gysid], [phonename], [phoneprice], [pjieshao], [pchengben], [pkucun], [pcolor], [ppeizhi] FROM [Phonexinxi]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Phonexinxi] WHERE [phonenum] = @original_phonenum AND [phoneid] = @original_phoneid AND [gysid] = @original_gysid AND [phonename] = @original_phonename AND [phoneprice] = @original_phoneprice AND [pjieshao] = @original_pjieshao AND [pchengben] = @original_pchengben AND (([pkucun] = @original_pkucun) OR ([pkucun] IS NULL AND @original_pkucun IS NULL)) AND (([pcolor] = @original_pcolor) OR ([pcolor] IS NULL AND @original_pcolor IS NULL)) AND (([ppeizhi] = @original_ppeizhi) OR ([ppeizhi] IS NULL AND @original_ppeizhi IS NULL))" InsertCommand="INSERT INTO [Phonexinxi] ([phoneid], [gysid], [phonename], [phoneprice], [pjieshao], [pchengben], [pkucun], [pcolor], [ppeizhi]) VALUES (@phoneid, @gysid, @phonename, @phoneprice, @pjieshao, @pchengben, @pkucun, @pcolor, @ppeizhi)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Phonexinxi] SET [phoneid] = @phoneid, [gysid] = @gysid, [phonename] = @phonename, [phoneprice] = @phoneprice, [pjieshao] = @pjieshao, [pchengben] = @pchengben, [pkucun] = @pkucun, [pcolor] = @pcolor, [ppeizhi] = @ppeizhi WHERE [phonenum] = @original_phonenum AND [phoneid] = @original_phoneid AND [gysid] = @original_gysid AND [phonename] = @original_phonename AND [phoneprice] = @original_phoneprice AND [pjieshao] = @original_pjieshao AND [pchengben] = @original_pchengben AND (([pkucun] = @original_pkucun) OR ([pkucun] IS NULL AND @original_pkucun IS NULL)) AND (([pcolor] = @original_pcolor) OR ([pcolor] IS NULL AND @original_pcolor IS NULL)) AND (([ppeizhi] = @original_ppeizhi) OR ([ppeizhi] IS NULL AND @original_ppeizhi IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_phonenum" Type="Int32" />
                    <asp:Parameter Name="original_phoneid" Type="Int32" />
                    <asp:Parameter Name="original_gysid" Type="Int32" />
                    <asp:Parameter Name="original_phonename" Type="String" />
                    <asp:Parameter Name="original_phoneprice" Type="Decimal" />
                    <asp:Parameter Name="original_pjieshao"  Type="String" />
                    <asp:Parameter Name="original_pchengben" Type="Decimal" />
                    <asp:Parameter Name="original_pkucun" Type="Int32" />
                    <asp:Parameter Name="original_pcolor" Type="String" />
                    <asp:Parameter Name="original_ppeizhi" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="phoneid" Type="Int32" />
                    <asp:Parameter Name="gysid" Type="Int32" />
                    <asp:Parameter Name="phonename" Type="String" />
                    <asp:Parameter Name="phoneprice" Type="Decimal" />
                    <asp:Parameter Name="pjieshao" Type="String" />
                    <asp:Parameter Name="pchengben" Type="Decimal" />
                    <asp:Parameter Name="pkucun" Type="Int32" />
                    <asp:Parameter Name="pcolor" Type="String" />
                    <asp:Parameter Name="ppeizhi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="phoneid" Type="Int32" />
                    <asp:Parameter Name="gysid" Type="Int32" />
                    <asp:Parameter Name="phonename" Type="String" />
                    <asp:Parameter Name="phoneprice" Type="Decimal" />
                    <asp:Parameter Name="pjieshao" Type="String" />
                    <asp:Parameter Name="pchengben" Type="Decimal" />
                    <asp:Parameter Name="pkucun" Type="Int32" />
                    <asp:Parameter Name="pcolor" Type="String" />
                    <asp:Parameter Name="ppeizhi" Type="String" />
                    <asp:Parameter Name="original_phonenum" Type="Int32" />
                    <asp:Parameter Name="original_phoneid" Type="Int32" />
                    <asp:Parameter Name="original_gysid" Type="Int32" />
                    <asp:Parameter Name="original_phonename" Type="String" />
                    <asp:Parameter Name="original_phoneprice" Type="Decimal" />
                    <asp:Parameter Name="original_pjieshao" Type="String" />
                    <asp:Parameter Name="original_pchengben" Type="Decimal" />
                    <asp:Parameter Name="original_pkucun" Type="Int32" />
                    <asp:Parameter Name="original_pcolor" Type="String" />
                    <asp:Parameter Name="original_ppeizhi" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
              
            <br />
            <div style="width:100px; text-align:center;margin:auto">
            <p>添加手机信息</p>
            </div>
           
            <table style="text-align:left;margin:auto" class="auto-style12">
                <tr>
                    <td class="auto-style20">
                        &nbsp;&nbsp;&nbsp;&nbsp;手机品牌编号</td>
                    <td class="auto-style3">
                        <input type="text" id="phoneid" name="phoneid" class="auto-style26"  runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;供应商编号</td>
                    <td class="auto-style16">
                        <input type="text"  id="gysid"  name="gysid"  runat="server" class="auto-style26"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手 机 名
                    </td>
                    <td class="auto-style16">
                        <input type="text" id="phonename" name="phonename" class="auto-style26" runat="server" />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机价格</td>
                    <td class="auto-style16">
                        <input type="text"  class="auto-style26" id="phoneprice" runat="server" name="phoneprice" /><br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机介绍</td>
                    <td class="auto-style3">
                        <input type="text"  class="auto-style17" id="pjieshao" runat="server" name="pjieshao" /></td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机成本</td>
                    <td class="auto-style13">
                        <input type="text" id="pchengben" name="pchengben"  runat="server" class="auto-style26"  />
                         
                    </td>
                </tr>
                  <tr>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 库&nbsp; 存</td>
                    <td class="auto-style5">
                        <input type="text" id="pkucun" name="pkucun"  class="auto-style26" runat="server" />
                    </td>
                </tr>
                  <tr>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机颜色</td>
                    <td class="auto-style5">
                        <input type="text" id="pcolor" name="pcolor"  class="auto-style26" runat="server" />
                    </td>
                </tr>
                  <tr>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机配置</td>
                    <td class="auto-style5">
                        <input type="text" id="ppeizhi" name="ppeizhi"  class="auto-style26" runat="server" />
                    </td>
                </tr>
            </table>
              <div style="width:100px; text-align:center;margin:auto">
                  <asp:Button ID="Button2" runat="server" Text="确定添加"  BackColor="#66ccff" Height="33px" Width="92px" OnClick="Button2_Click"/>
            </div>
             <br />
            <br />
            <br />
            <br />
            <br />
    
        </div>
    </form>
</body>
</html>
