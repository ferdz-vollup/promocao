<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="como-participar.aspx.cs" Inherits="PromocaoBesni.como_participar" %>
<%@ Register Src="~/inc/head.ascx" TagPrefix="besni" TagName="head" %>
<%@ Register Src="~/inc/menu.ascx" TagPrefix="besni" TagName="menu" %>
<%@ Register Src="~/inc/footer.ascx" TagPrefix="besni" TagName="footer" %>
<%@ Register Src="~/inc/scripts.ascx" TagPrefix="besni" TagName="scripts" %>

<!doctype html>
<html>

<!--head-->
<head>
    <besni:head runat="server" ID="head" />
    <title>Promoção Besni | Veja como Participar</title>
    <meta name="description" content="Veja como participar da promoção Besni e concorra a prêmios incríveis. Quanto mais compras Besni você realizar, mais chances você tem de ganhar."/>
    <!-- facebook -->
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Promoção Besni | Veja como Participar" />
    <meta property="og:description" content="Veja como participar da promoção Besni e concorra a prêmios incríveis. Quanto mais compras Besni você realizar, mais chances você tem de ganhar." />
    <meta property="og:url" content="http://www.promocaobesni.com.br/como-participar.aspx" />
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
		<div id="imagem-carro"><img src="/assets/imagens/imagem-carro.png" alt="Imagem carro"></div>
	</div>
</section>

<!--CONTAINER-->
<section id="como-participar">
	<div class="container">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">
				“feche o ano com estilo”<br>
				veja como participar
			</h2>	
		</div>
		<div class="row espaco-colunas" style="margin-top: 10%">
			<div class="col-md-6">
				<h3 class="basenine text-uppercase cinza">Faça sua compra na Besni </h3>
				<div class="traco-vermelho"></div>
				<div class="row">
					<div class="col-md-3 col-xs-3 text-center">
						<img src="/assets/imagens/icone-compras-acima.png" alt="Ícone compras">
					</div>
					<div class="col-md-9 col-xs-9">
						<span class="saiba-concorra">
							Para participar da promoção, basta efetuar uma compra de R$200,00 ou mais a partir do dia 26/11/2017 em qualquer loja Besni e cadastrar o cupom fiscal aqui no site da promoção. Quanto mais compras você realizar, mais chances de ganhar! 
						</span>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<h3 class="basenine text-uppercase cinza">cadastre seus cupons</h3>
				<div class="traco-vermelho"></div>
				<div class="row">
					<div class="col-md-3 col-xs-3 text-center">
						<img src="/assets/imagens/icone-cadastre-cupons.png" alt="Ícone cupons">
					</div>
					<div class="col-md-9 col-xs-9">
						<span class="saiba-concorra">
							Após efetuar a compra, faça seu cadastro aqui no site, incluindo dados pessoais e informações do seu cupom fiscal. Não se esqueça da foto do cupom fiscal, ela é importante para a confirmação do seu prêmio se você for sorteado. Caso você tenha feito as compras com o Cartão Besni, deverá informar ainda o número do cartão usado para o pagamento – ele dobra as suas chances de ganhar!  
						</span>
					</div>
				</div>
			</div>
		</div>
		<div class="row espaco-colunas" style="margin-top: 15%">
			<div class="col-md-6">
				<h3 class="basenine text-uppercase cinza">fique de olho nos sorteios</h3>
				<div class="traco-vermelho"></div>
				<div class="row">
					<div class="col-md-3 col-xs-3 text-center">
						<img src="/assets/imagens/icone-sorteio.png" alt="Ícone computador sorteio">
					</div>
					<div class="col-md-9 col-xs-9">
						<span class="saiba-concorra">
							Durante o período da promoção, serão realizados quatro sorteios:
<p style="margin-left:25px;">1º sorteio em 09/12/2017</p>
<p style="margin-left:25px;">2º sorteio em 16/12/2017</p>
<p style="margin-left:25px;">3º sorteio em 23/12/2017</p>
<p style="margin-left:25px;">Sorteio final em 03/01/2018</p>
<p>Os sorteados serão informados através dos dados preenchidos no cadastro e seus nomes serão divulgados aqui no site da promoção.</p>
  
						</span>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<h3 class="basenine text-uppercase cinza">os prêmios</h3>
				<div class="traco-vermelho"></div>
				<div class="row">
					<div class="col-md-3 col-xs-3 text-center">
						<img src="/assets/imagens/icone-jeep-moto.png" alt="Ícone prêmios">
					</div>
					<div class="col-md-9 col-xs-9">
						<span class="saiba-concorra">
							Serão sorteadas 10 motos 0km a cada sorteio periódico, totalizando 30 prêmios, e 01 Jeep Renegade Custom 0km no sorteio final da promoção*.<br /><br />
                            <span style="font-size:12px;">*O ganhador poderá trocar o prêmio por valor em cartão presente. Consulte o regulamento para mais informações.</span>
						</span>
					</div>
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