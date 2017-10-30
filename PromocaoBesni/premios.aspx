<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PromocaoBesni._default" %>
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
					Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. 
				</span>
			</div>
			<img src="/assets/imagens/jeep.png" alt="Imagem jeep">
		</div>
		<div class="row" style="margin-top: 10%;text-align: right">
			<div class="col-md-6" style="text-align: left">
				<h3 class="basenine text-uppercase cinza">30 motos bull krc 50c lx</h3>
				<div class="traco-vermelho"></div>
				<span style="line-height: 30px;">
					Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. 
				</span>
			</div>
			<img src="/assets/imagens/moto-bull.png" alt="Imagem moto bull">
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