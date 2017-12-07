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

            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-trophy fa-fw"></i>Aguardando aprovação
                        </div>
                        <div class="panel-body">
                            <table width="100%" border="0">
                                <tr>
                                    <th>Nome</th>
                                    <th>CPF</th>
                                    <th>Número da Sorte</th>
                                    <th>Cupom Fiscal</th>
                                    <th>Status</th>
                                </tr>
                                <tbody id="idAguardando" runat="server">
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-trophy fa-fw"></i>Aprovados
                        </div>
                        <div class="panel-body">
                            <table width="100%" border="0">
                                <tr>
                                    <th>Nome</th>
                                    <th>CPF</th>
                                    <th>Número da Sorte</th>
                                    <th>Cupom Fiscal</th>
                                </tr>
                                <tbody id="idAprovado" runat="server">
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!--footer-->
    <besni:footer runat="server" ID="footer" />
    <script type="text/javascript">
        function aprovar(id, valor)
        {
            ajax2 = ajaxInit();
            ajax2.open("GET", "ganhadores.aspx?acao=aprovar&id=" + id + "&valor=" + valor, true);
            ajax2.setRequestHeader("Content-Type", "charset=iso-8859-1");
            ajax2.onreadystatechange = function () {
                if (ajax2.readyState == 4) {
                    if (ajax2.status == 200) {

                       // alert(ajax2.responseText);
                        //if (ajax2.responseText == "bloqueado") {
                        //    $('#msgErro').html('<p><strong>Atenção: </strong>Este CPF está bloqueado para essa promoção.</p>');
                        //    $('#cpf').addClass("inputs cpf error");
                        //    $('#cpf').focus();
                        //    return false;
                        //}
                        //if (ajax2.responseText > 0) {
                        //    $('#msgErro').html('<p><strong>Atenção: </strong>Este CPF já está cadastrado em nossa base.</p>');
                        //    $('#cpf').addClass("inputs cpf error");
                        //    $('#cpf').focus();
                        //    return false;
                        //}
                        //else {
                        //    $('#idAprovado').html(ajax2.responseText);
                        //    $('#cpf').removeClass("error");
                        //    $('#rg').focus();
                        //}
                        $('#idAprovado').html(ajax2.responseText);
                    }
                }
            }
            ajax2.send(null);
        }
    </script>
</body>

</html>
