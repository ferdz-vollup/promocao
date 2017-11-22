<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro-abertura.aspx.cs" Inherits="PromocaoBesni.cadastro_abertura" %>

<%@ Register Src="~/inc/head.ascx" TagPrefix="besni" TagName="head" %>
<%@ Register Src="~/inc/menu.ascx" TagPrefix="besni" TagName="menu" %>
<%@ Register Src="~/inc/footer.ascx" TagPrefix="besni" TagName="footer" %>
<%@ Register Src="~/inc/scripts.ascx" TagPrefix="besni" TagName="scripts" %>

<!doctype html>
<html>
<head>
    <besni:head runat="server" ID="head" />
    <title>Promoção Besni | O que deseja fazer?</title>
    <meta name="description" content="Participe agora da promoção Besni cadastrando novos cupons, conferindo seus cupons ativos e visualizando os próximos sorteios."/>
    <!-- facebook -->
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Promoção Besni | O que deseja fazer?" />
    <meta property="og:description" content="Participe agora da promoção Besni cadastrando novos cupons, conferindo seus cupons ativos e visualizando os próximos sorteios." />
    <meta property="og:url" content="http://www.promocaobesni.com.br/cadastro-abertura.aspx" />
    <meta property="og:site_name" content="Promoção Besni" />
    <meta property="og:image" content="http://www.promocaobesni.com.br/assets/imagens/Besni_Share_2017.jpg" />
    <meta property="og:image:type" content="image/jpeg">
    <meta property="og:image:width" content="315"> <!-- PIXELS -->
    <meta property="og:image:height" content="600"> <!-- PIXELS -->
</head>
<body>

    <!--menu-->
    <besni:menu runat="server" ID="menu" />

    <section id="banner-premios">
        <div class="banner">
            <div id="imagem-carro">
                <img src="assets/imagens/imagem-carro.png" alt=""></div>
        </div>
    </section>

    <section id="cadastro">

        <div class="container">

            <div class="text-center">
                <h2 class="basenine text-uppercase vermelho">cadastro</h2>
            </div>

            <div class="row espaco-colunas">
                <div class="row">
                    <div class="col-xs-12" style="text-align: center;">
                        <div class="row">
                            <div class="col-sm-6 col-md-5" style="margin: auto; float: none;">
                                <div style="padding-top: 20px; color: #6a6a6a;">
                                    <div class="row">
                                        <div class="col-xs-6 col-sm-6">
                                            <p style="float: left;">Olá, <a href="javascript:void(0);" style="color: #6a6a6a; text-decoration: underline;"><span runat="server" id="usuario"></span></a></p>
                                        </div>

                                        <div class="col-xs-6 col-sm-5">

                                            <a href="javascript:void(0);" style="color: #231f20; text-decoration: underline;">editar dados pessoais</a>

                                        </div>

                                        <div class="col-xs-6 col-sm-1">

                                            <a href="/ajax/acoes.aspx?acao=logout" style="color: #231f20; text-decoration: underline; float: right;">sair</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row" style="margin-top: 50px;">

                            <!--<div class="col-xs-1 col-sm-4"></div>-->

                            <div class="col-sm-6 col-md-5" style="margin: auto; float: none; margin-bottom: 5px;">

                                <h3 class="basenine text-uppercase cinza" style="text-align: left;">o que deseja fazer?</h3>

                                <div class="traco-vermelho"></div>

                            </div>

                            <!--<div class="col-xs-1 col-sm-4"></div>-->

                        </div>

                        <div class="row">

                            <div class="col-sm-6 col-md-5" style="margin: auto; float: none; margin-bottom: 5px;">
                                <button onclick="javascript:abrirLink('cadastrar-cupom.aspx');" class="btn-form" style="width: 100%;">cadastrar novos cupons</button>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-sm-6 col-md-5" style="margin: auto; float: none; margin-bottom: 5px;">
                                <button onclick="javascript:abrirLink('meus-cupons.aspx');" class="btn-form" style="width: 100%;">ver meus cupons</button>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-sm-6 col-md-5" style="margin: auto; float: none; margin-bottom: 5px;">
                                <button onclick="javascript:abrirLink('ganhadores.aspx');" class="btn-form" style="width: 100%;">ver os ganhadores e próximos sorteios</button>
                            </div>

                        </div>

                    </div>

                </div>

            </div>
        </div>
    </section>

     <!--footer-->
    <besni:footer runat="server" ID="footer" />

    <!--scripts-->
    <besni:scripts runat="server" ID="scripts" />

    <script type="text/javascript">
        function abrirLink(link) {
            location.href = link
        }
        
    </script>
    </script>

</body>
</html>