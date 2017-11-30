<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PromocaoBesni.admin.index" %>
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
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-user-plus fa-2x"></i>
                                </div>
                                <div class="col-xs-12 text-right">
                                    <div class="huge" id="contagemCadastros" runat="server"></div>
                                    <div>Cadastros efetuados</div>
                                </div>
                            </div>
                        </div>
                        <a href="usuarios.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalhes</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-barcode fa-2x"></i>
                                </div>
                                <div class="col-xs-12 text-right">
                                    <div class="huge" id="contagemCupons" runat="server"></div>
                                    <div>Cupons gerados</div>
                                </div>
                            </div>
                        </div>
                        <a href="cupons.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalhes</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-credit-card-alt fa-2x"></i>
                                </div>
                                <div class="col-xs-12 text-right">
                                    <div class="huge">R$ 0,00</div>
                                    <div>Vendidos na promoção</div>
                                </div>
                            </div>
                        </div>
                        <a href="javascript:void(0);">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalhes</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-instagram fa-2x"></i>
                                </div>
                                <div class="col-xs-12 text-right">
                                    <div class="huge" id="contagemInstagram" runat="server"></div>
                                    <div>Fotos do Instagram</div>
                                </div>
                            </div>
                        </div>
                        <a href="instagram.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Ver detalhes</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
                <!-- DIV ÚLTIMOS RESULTADOS -->
                <div class="col-lg-6">
                    <div class="panel panel-default" style="min-height:430px">
                        <div class="panel-heading">
                            <i class="fa fa-university fa-fw"></i> Último sorteio
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="list-group">
                                <a href="http://www.loterias.caixa.gov.br/wps/portal/loterias/landing/federal" target="_blank" title="Conferir na CEF" class="list-group-item">
                                    <strong id="linha1" runat="server"></strong>
                                </a>
                                <a href="javascript:void(0);" class="list-group-item">
                                    <i class="fa fa-gift fa-fw"></i><strong>Número da Sorte Besni</strong>
                                    <span class="pull-right text-muted" id="premioBesni" runat="server"></span>
                                </a>
                                <a href="javascript:void(0);" class="list-group-item">
                                    <strong>1º</strong> Prêmio
                                    <span class="pull-right text-muted small" id="premio1" runat="server"></span>
                                </a>
                                <a href="javascript:void(0);" class="list-group-item">
                                    <strong>2º</strong> Prêmio
                                    <span class="pull-right text-muted small" id="premio2" runat="server"></span>
                                </a>
                                <a href="javascript:void(0);" class="list-group-item">
                                    <strong>3º</strong> Prêmio
                                    <span class="pull-right text-muted small" id="premio3" runat="server"></span>
                                </a>
                                <a href="javascript:void(0);" class="list-group-item">
                                    <strong>4º</strong> Prêmio
                                    <span class="pull-right text-muted small" id="premio4" runat="server"></span>
                                </a>
                                <a href="javascript:void(0);" class="list-group-item">
                                    <strong>5º</strong> Prêmio
                                    <span class="pull-right text-muted small" id="premio5" runat="server"></span>
                                </a>
                            </div>
                            <!-- /.list-group -->
                            <a href="ganhadores.aspx" class="btn btn-default btn-block">Veja os ganhadores</a>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel .chat-panel -->
                </div>
                <!-- /.col-lg-4 -->

                <div class="col-lg-6">
                    <div class="panel panel-default"  style="min-height:430px">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> Cadastros
                            <%--<div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        Ações
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>--%>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div id="piechart" style="width: 100%; min-height: 341px;"></div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-8 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!--footer-->
    <besni:footer runat="server" ID="footer" />

</body>

</html>
