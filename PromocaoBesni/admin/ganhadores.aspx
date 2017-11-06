<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ganhadores.aspx.cs" Inherits="PromocaoBesni.admin.ganhadores" %>
<%@ Register Src="~/admin/inc/head.ascx" TagPrefix="besni" TagName="head" %>
<%@ Register Src="~/admin/inc/menu-topo.ascx" TagPrefix="besni" TagName="menuTopo" %>
<%@ Register Src="~/admin/inc/menu.ascx" TagPrefix="besni" TagName="menu" %>
<%@ Register Src="~/admin/inc/footer.ascx" TagPrefix="besni" TagName="footer" %>

<!DOCTYPE html>
<html lang="pt">

<head>
    <besni:head runat="server" ID="head" />
</head>

<body id="bodyInterna">
    <div id="wrapper">

        <!--menu-->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <besni:menuTopo runat="server" ID="menuTopo" />
            <besni:menu runat="server" ID="menu" />
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Ganhadores</h1>
                </div>
            </div>
        </div>
    </div>

    <!--footer-->
    <besni:footer runat="server" ID="footer" />
      <script src="js/instagram.js"></script>
</body>

</html>
