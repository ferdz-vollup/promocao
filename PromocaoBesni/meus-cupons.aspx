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
    <meta name="description" content="Seu cupom foi cadastrado com sucesso! A seguir estão os seus números da sorte para você participar dos sorteios e ganhar prêmios incríveis!"/>
    <!-- facebook -->
    <metaproperty="og:locale" content="pt_BR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Promoção Besni | Cupom Cadastrado" />
    <meta property="og:description" content="Seu cupom foi cadastrado com sucesso! A seguir estão os seus números da sorte para você participar dos sorteios e ganhar prêmios incríveis!" />
    <meta property="og:url" content="http://www.promocaobesni.com.br/meus-cupons.aspx" />
    <meta property="og:site_name" content="Promoção Besni" />
    <meta property="og:image" content="http://www.promocaobesni.com.br/assets/imagens/Besni_Share_2017.jpg" />
    <meta property="og:image:type" content="image/jpeg">
    <meta property="og:image:width" content="315"> <!-- PIXELS -->
    <meta property="og:image:height" content="600"> <!-- PIXELS -->
</head>

<body>
<!--menu-->
<besni:menu runat="server" ID="menu" />

<!--banner-->
<section id="banner-premios">
	<div class="banner">
		<div id="imagem-carro"><img src="/assets/imagens/imagem-carro.png" alt=""></div>
	</div>
</section>

<!--CONTAINER-->
<section id="ganhadores">
	<div class="container">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">cadastro</h2>	
		</div>
		<div class="row espaco-colunas" style="margin-top: 5%">          
			<div class="col-sm-7 col-md-5" style="margin: auto; float: none">
				<h3 class="basenine text-uppercase cinza" style="text-align: center;">
               		cupons cadastrados
               	</h3>
                <div class="traco-vermelho meio"></div>
                
                <!-- lista de cupons -->
                <section id="secCupons" runat="server"></section>

            </div>
			<div class="col-sm-7 col-md-5 text-center" style="margin: auto; float: none; padding: 20px 15px;">
				<p>Realize novas compras na Besni e aumente suas chances de ganhar!</p>
            </div>
                                        
			<div class="row">
				<div class="col-xs-10 col-sm-4" style="margin: auto; float: none;margin-bottom: 5px;">
                    <a href="cadastrar-cupom.aspx" title="Cadastrar novos cupons">
					    <button class="btn-form" style="width: 100%;">cadastrar novos cupons</button>
                    </a>
                    <a href="javascript:history.back()" title="Voltar">
					    <button class="btn-form" style="width: 100%;margin-top: 10px;">voltar</button>
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