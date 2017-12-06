<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="meus-cupons.aspx.cs" Inherits="PromocaoBesni.meus_cupons" %>

<%@ Register Src="~/inc/head.ascx" TagPrefix="besni" TagName="head" %>
<%@ Register Src="~/inc/menu.ascx" TagPrefix="besni" TagName="menu" %>
<%@ Register Src="~/inc/footer.ascx" TagPrefix="besni" TagName="footer" %>
<%@ Register Src="~/inc/scripts.ascx" TagPrefix="besni" TagName="scripts" %>

<!doctype html>
<html>

<!--head-->
<head>
    <besni:head runat="server" ID="head" />
    <title>Promoção Besni | Cupom Cadastrado</title>
    <meta name="description" content="Seu cupom foi cadastrado com sucesso! A seguir estão os seus números da sorte para você participar dos sorteios e ganhar prêmios incríveis!" />
    <!-- facebook -->
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Promoção Besni | Cupom Cadastrado" />
    <meta property="og:description" content="Seu cupom foi cadastrado com sucesso! A seguir estão os seus números da sorte para você participar dos sorteios e ganhar prêmios incríveis!" />
    <meta property="og:url" content="http://www.promocaobesni.com.br/meus-cupons.aspx" />
    <meta property="og:site_name" content="Promoção Besni" />
    <meta property="og:image" content="http://www.promocaobesni.com.br/assets/imagens/Besni_Share_2017.jpg" />
    <meta property="og:image:type" content="image/jpeg">
    <meta property="og:image:width" content="315">
    <!-- PIXELS -->
    <meta property="og:image:height" content="600">
    <!-- PIXELS -->
    <style>#secCupons{margin-top:10px}@media(max-width:450px){#secCupons{font-size:10px}}</style>
</head>

<body>
    <!--menu-->
    <besni:menu runat="server" ID="menu" />

    <!--banner-->
    <section id="banner-premios">
        <div class="banner">
            <div id="imagem-carro">
                <img src="/assets/imagens/imagem-carro.png" alt="imagem carro"></div>
        </div>
    </section>

    <!--CONTAINER-->
    <section id="ganhadores">
        <div class="container">
            <div class="text-center">
                <h2 class="basenine text-uppercase vermelho">cadastro</h2>
            </div>
            <div class="row espaco-colunas" style="margin-top: 5%">
                <div class="col-sm-7 col-md-7" style="margin: auto; float: none">
                    <h3 class="basenine text-uppercase cinza" style="text-align: center;">cupons cadastrados
                    </h3>
                    <div class="traco-vermelho meio"></div>

                    <span style="line-height: 30px;">Olá, <strong><span runat="server" id="usuario"></span></strong>!<br /> Veja abaixo seu histórico de cupons cadastrado na promoção. Feche o Ano com Estilo.</span>
                    <!-- lista de cupons -->
                    <section id="secCupons" runat="server"></section>

                    <!-- nova tabela - luig -->
                    <%--<div class="table-responsive">
                    <table class="table table-condensed text-center">
                        <thead style="background:#97092a;color:#fff">
                            <tr class="text-uppercase basenine">
                                <th style="vertical-align:middle;text-align:center">data</th>
                                <th style="vertical-align:middle;text-align:center">valor</th>
                                <th style="vertical-align:middle;text-align:center">número da<br>sorte</th>
                                <th style="vertical-align:middle;text-align:center">número da<br>sorte especial</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>22/11/2017</td>
                                <td>R$ 200,00</td>
                                <td>108-97088</td>
                                <td>E-108-93017</td>
                            </tr>
                            <tr>
                                <td>23/11/2017</td>
                                <td>R$ 625,00</td>
                                <td>108-90433</td>
                                <td>E-108-91130</td>
                            </tr>
                            <tr>
                                <td>23/11/2017</td>
                                <td>R$ 625,00</td>
                                <td>108-83599</td>
                                <td>E-107-88368</td>
                            </tr>
                            <tr>
                                <td>23/11/2017</td>
                                <td>R$ 625,00</td>
                                <td>107-84160</td>
                                <td>E-107-79342</td>
                            </tr>
                        </tbody>
                    </table>
                </div>--%>
                <!-- fim da nova tabela - luig -->

            </div>
            <div class="col-sm-7 col-md-5 text-center" style="margin: auto; float: none; padding: 20px 15px;">
                <p>Realize novas compras na Besni e aumente suas chances de ganhar!</p>
            </div>

            <div class="row">
                <div class="col-xs-10 col-sm-4" style="margin: auto; float: none; margin-bottom: 5px;">
                    <a href="cadastrar-cupom.aspx" title="Cadastrar novos cupons">
                        <button class="btn-form" style="width: 100%;">cadastrar novos cupons</button>
                    </a>
                    <a href="javascript:history.back()" title="Voltar">
                        <button class="btn-form" style="width: 100%; margin-top: 10px;">voltar</button>
                    </a>
                </div>
            </div>
        </div>
        </div>
    </section>

    <!--rodapé-->

    <!--footer-->
    <besni:footer runat="server" ID="footer" />

    <!--scripts-->
    <besni:scripts runat="server" ID="scripts" />

</body>
</html>
