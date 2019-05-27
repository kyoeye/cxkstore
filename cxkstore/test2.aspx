<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="cxkstore.test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="text" ID="tt1" runat="server" />
            <div class="list-group">
                <button type="button" class="list-group-item">Cras justo odio</button>
                <button type="button" class="list-group-item">Dapibus ac facilisis in</button>
                <button type="button" class="list-group-item">Morbi leo risus</button>
                <button type="button" class="list-group-item">Porta ac consectetur ac</button>
                <button type="button" class="list-group-item">Vestibulum at eros</button>
            </div>
            <div class="row">
                <div    onclick="location.href = '<%=ttttt%>';" class="col-sm-6 col-md-4">
                    <div class="thumbnail" style="overflow: hidden">
                        <img src="images/OPPO/OPPOr15 (1).jpg" alt="..." />
                        <div class="caption">
                            <h3>Thumbnail label</h3>
                            <p>...</p>
                            <p><a href="#" class="btn btn-primary" role="button"><%=ttttt %></a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail" style="overflow: hidden">
                        <img src="images/OPPO/OPPOr15 (1).jpg" alt="..." />
                        <div class="caption">
                            <h3>Thumbnail label</h3>
                            <p>...</p>
                            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                        </div>
                    </div>
                </div>

            </div>
                        <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail" style="overflow: hidden">                 
                        <div class="caption">
                         <h3>测试颜色</h3>

                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail" style="overflow: hidden">     
                        <div class="caption">
                            <h3>测试颜色</h3>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </form>
</body>
</html>
