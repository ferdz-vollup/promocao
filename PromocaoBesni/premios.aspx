﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="premios.aspx.cs" Inherits="PromocaoBesni.premios" %>
<%@ Register Src="~/inc/head.ascx" TagPrefix="besni" TagName="head" %>
<%@ Register Src="~/inc/menu.ascx" TagPrefix="besni" TagName="menu" %>
<%@ Register Src="~/inc/footer.ascx" TagPrefix="besni" TagName="footer" %>
<%@ Register Src="~/inc/scripts.ascx" TagPrefix="besni" TagName="scripts" %>

<!doctype html>
<html>

<!--head-->
<head>
    <besni:head runat="server" ID="head" />
    <title>Promoção Besni | Conheça os Prêmios</title>
    <meta name="description" content="Ao participar da promoção, você concorre a 1 Jeep Renegade Custom,modelo 2018 e a 30 motos Bull Motors KRC 50 LX, 2015/2015. Não fique de fora!"/>
    <!-- facebook -->
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Promoção Besni | Conheça os Prêmios" />
    <meta property="og:description" content="Ao participar da promoção, você concorre a 1 Jeep Renegade Custom,modelo 2018 e a 30 motos Bull Motors KRC 50 LX, 2015/2015. Não fique de fora!" />
    <meta property="og:url" content="http://www.promocaobesni.com.br/premios.aspx" />
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
<section id="banner-escrita">
	<div class="banner">
		<div id="imagem-carro"><img src="/assets/imagens/escrita-banner.png" alt="Feche o ano com estilo"></div>
	</div>
</section>

<!--CONTAINER-->
<section id="premios">
	<div class="container">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">
				conheça os prêmios
			</h2>	
		</div>
		<div class="row" style="margin-top: 10%;text-align: right">
			<div class="col-md-2"></div>
			<div class="col-md-4 col-sm-5" style="text-align: left">
				<h3 class="basenine text-uppercase cinza">1 jeep renegade okm</h3>
				<div class="traco-vermelho"></div>
				<span style="line-height: 30px;">
					Jeep Renegade Custom, modelo 2018, 05 (cinco) portas, flex, no valor de R$76.000,00 (setenta e seis mil reais). 
				</span>
			</div>
			<img src="/assets/imagens/jeep.png" alt="Imagem jeep" class="col-md-4">
		</div>
		<div class="row" style="margin-top: 10%;text-align: right">
			<div class="col-md-2"></div>
			<div class="col-md-4 col-sm-5" style="text-align: left">
				<h3 class="basenine text-uppercase cinza">30 motos bull krc 50c lx</h3>
				<div class="traco-vermelho"></div>
				<span style="line-height: 30px;">
					Motocicleta 0km da marca Bull Motors, Modelo KRC 50 LX, 2015/2015, gasolina, no valor de R$5.500,00 (cinco mil e quinhentos reais). 
				</span>
			</div>
			<img src="/assets/imagens/moto-bull.png" alt="Imagem moto bull" class="col-md-4">

			<div class="col-md-12" style="margin-top:40px">
			    <p class="singleParagraph">
                    O participante contemplado poderá escolher entre o prêmio indicado ou valor equivalente em cartão presente, sem função saque. Em caso de dúvida verifique o <a href="regulamento.aspx" title="Link para página Regulamento">regulamento</a>.<br />Imagens meramente ilustrativas. <br />CERTIFICADO DE AUTORIZAÇÃO SEAE Nº 04.000093/2017.
			    </p>
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