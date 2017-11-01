<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="instagram.aspx.cs" Inherits="PromocaoBesni.admin.instagram" %>
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
                    <h1 class="page-header">Instagram</h1>
                </div>
            </div>
            
            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-picture-o fa-fw"></i> Fotos não aprovadas
                        </div>
                        <div class="panel-body">
                            <div id="fotosNaoAprovadas" runat="server"></div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-picture-o fa-fw"></i> Fotos aprovadas
                        </div>
                        <div class="panel-body">
                            <div id="fotosAprovadas" runat="server"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function mudaStatusFoto(status, id) {
            jQuery("a.fotosInstagram[data-id='" + id + "']").fadeOut(800).remove();
            ajax2 = ajaxInit();
            ajax2.open("GET", "/ajax/acoes.aspx?acao=mudaStatusFoto&status=" + status + "&id=" + id, true);
            ajax2.setRequestHeader("Content-Type", "charset=iso-8859-1");
            ajax2.onreadystatechange = function () {
                if (ajax2.readyState == 4) {
                    if (ajax2.status == 200) {
                        ajax2 = ajaxInit();
                        ajax2.open("GET", "instagram.aspx?acao=carregaFotos", true);
                        ajax2.setRequestHeader("Content-Type", "charset=iso-8859-1");
                        ajax2.onreadystatechange = function () {
                            if (ajax2.readyState == 4) {
                                if (ajax2.status == 200) {
                                    alert("deu");
                                }
                            }
                        }
                        ajax2.send(null);
                    }
                }
            }
            ajax2.send(null);
        }
    </script>

    <!--footer-->
    <besni:footer runat="server" ID="footer" />
      <script src="js/instagram.js"></script>
</body>

</html>