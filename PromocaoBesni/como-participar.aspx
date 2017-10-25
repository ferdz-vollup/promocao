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
				<h3 class="basenine text-uppercase cinza">compras acima de r$200</h3>
				<div class="traco-vermelho"></div>
				<div class="row">
					<div class="col-md-3 col-xs-3 text-center">
						<img src="/assets/imagens/icone-compras-acima.png" alt="Ícone compras">
					</div>
					<div class="col-md-9 col-xs-9">
						<span class="saiba-concorra">
							Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. 
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
							Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. 
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
							Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit.  
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
							Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit.  
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