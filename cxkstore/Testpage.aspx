<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master1.Master" CodeBehind="Testpage.aspx.cs" Inherits="cxkstore.Testpage" %>

<%@ Register Src="~/mytestcontrol.ascx" TagPrefix="uc2" TagName="mytestcontrol" %>
<%@ Register Src="~/userControl/CardUserControl.ascx" TagPrefix="uc2" TagName="CardUserControl" %>
<%@ Register Src="~/userControl/GWcardUserControl.ascx" TagPrefix="uc2" TagName="GWcardUserControl" %>




<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html>
<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
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
            <uc2:GWcardUserControl runat="server" ID="GWcardUserControl" />
             <ul class="pager">
    <li><a href="#">Previous</a></li>
    <li><a href="#">Next</a></li>
  </ul>
        </div>

</body>
</html>
    </asp:Content>
