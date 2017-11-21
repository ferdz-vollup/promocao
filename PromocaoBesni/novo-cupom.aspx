<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="novo-cupom.aspx.cs" Inherits="PromocaoBesni.novo_cupom" %>

<%@ Register Src="~/inc/head.ascx" TagPrefix="besni" TagName="head" %>
<%@ Register Src="~/inc/menu.ascx" TagPrefix="besni" TagName="menu" %>
<%@ Register Src="~/inc/footer.ascx" TagPrefix="besni" TagName="footer" %>
<%@ Register Src="~/inc/scripts.ascx" TagPrefix="besni" TagName="scripts" %>

<!doctype html>
<html>

<!--head-->
<head>
    <besni:head runat="server" ID="head" />
    <title>Promoção Besni</title>
</head>

<body>
    <!--menu-->
    <besni:menu runat="server" ID="menu" />

    <!--banner-->
    <section id="banner-premios">
        <div class="banner">
            <div id="imagem-carro">
                <img src="/assets/imagens/imagem-carro.png" alt=""></div>
        </div>
    </section>

    <!--CONTAINER-->
    <section id="ganhadores">
        <div class="container">
            <div class="text-center">
                <h2 class="basenine text-uppercase vermelho">cadastro</h2>
            </div>
            <div class="row espaco-colunas" style="margin-top: 5%">
                <div class="col-sm-8 col-md-6" style="margin: auto; float: none">
                    <h3 class="basenine text-uppercase cinza" style="text-align: center;">cadastrado com sucesso!
                    </h3>
                    <div class="traco-vermelho meio"></div>
                    <section runat="server" id="divRetorno">
                        
                    </section>
    </div>
		</div>
        <div class="row text-center">
            <div class="col-sm-8 col-md-6" style="margin: auto; float: none; padding: 20px 15px;">
                <p>Esses são os seus números da sorte. Com eles, você estará concorrendo aos sorteios periódicos e ao sorteio final da promoção.</p><br /><p> Você pode acessá-los a qualquer momento aqui no site, com seu login e senha cadastrados.</p>
            </div>
        </div>
    <div class="row">
        <div class="col-xs-10 col-sm-4" style="margin: auto; float: none; margin-bottom: 5px;">
            <a href="cadastrar-cupom.aspx" title="Cadastrar mais">
                <button class="btn-form" style="width: 100%;">cadastrar mais</button>
            </a>
            <a href="cadastro-abertura.aspx" title="Início">
                <button class="btn-form" style="width: 100%; margin-top: 10px;">início</button>
            </a>
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
