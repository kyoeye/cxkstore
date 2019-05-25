<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master" CodeBehind="Testpage.aspx.cs" Inherits="cxkstore.Testpage" %>

<%@ Register Src="~/mytestcontrol.ascx" TagPrefix="uc2" TagName="mytestcontrol" %>
<%@ Register Src="~/userControl/CardUserControl.ascx" TagPrefix="uc2" TagName="CardUserControl" %>



<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html>
<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

        <div runat="server">
            <asp:Label Text="text" ID="test222" runat="server" />
            <ul id="fukul" runat="server" >
                <%foreach(string stritem in mulist)
                    {%>
                <li class="t">
                    <%=stritem%>
                    <uc2:mytestcontrol runat="server" ID="mytestcontrol"  />
                    </li>
                <%} %>               
            </ul>
     

                        <ul id="Ul1" runat="server" >              
            </ul>
            <uc2:CardUserControl runat="server"  ID="cardcontrol" />
        </div>

</body>
</html>
    </asp:Content>
