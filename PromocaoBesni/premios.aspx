<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="premios.aspx.cs" Inherits="PromocaoBesni.premios" %>
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
			<div class="col-md-6" style="text-align: left">
				<h3 class="basenine text-uppercase cinza">1 jeep renegade okm</h3>
				<div class="traco-vermelho"></div>
				<span style="line-height: 30px;">
					Jepp Renegade Custom, modelo 2018, 05 (cinco) portas, flex, no valor de R$76.000,00 (setenta e seis mil reais). 
				</span>
			</div>
			<img src="/assets/imagens/jeep.png" alt="Imagem jeep">
		</div>
		<div class="row" style="margin-top: 10%;text-align: right">
			<div class="col-md-6" style="text-align: left">
				<h3 class="basenine text-uppercase cinza">30 motos bull krc 50c lx</h3>
				<div class="traco-vermelho"></div>
				<span style="line-height: 30px;">
					Motocicleta 0km da marca Bull Motors, Modelo KRC 50 LX, 2015/2015, gasolina, no valor de R$5.500,00 (cinco mil e quinhentos reais). 
				</span>
			</div>
			<img src="/assets/imagens/moto-bull.png" alt="Imagem moto bull">



            <br><br><br><br>
			<div class="col-md-12">
			    <p class="singleParagraph">
                    O participante contemplado poderá escolher entre o prêmio indicado ou valor equivalente em cartão presente, sem função saque. Em caso de dúvida o <a href="regulamento.aspx" title="Link para página Regulamento">regulamento</a>. Imagens meramente ilustrativas. CERTIFICADO DE AUTORIZAÇÃO SEAE Nº 04.000093/2017.
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