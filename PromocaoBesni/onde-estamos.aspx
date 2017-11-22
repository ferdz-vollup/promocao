<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="onde-estamos.aspx.cs" Inherits="PromocaoBesni.onde_estamos" %>
<%@ Register Src="~/inc/head.ascx" TagPrefix="besni" TagName="head" %>
<%@ Register Src="~/inc/menu.ascx" TagPrefix="besni" TagName="menu" %>
<%@ Register Src="~/inc/footer.ascx" TagPrefix="besni" TagName="footer" %>
<%@ Register Src="~/inc/scripts.ascx" TagPrefix="besni" TagName="scripts" %>

<!doctype html>
<html>

<!--head-->
<head>
    <besni:head runat="server" ID="head" />
    <title>Promoção Besni | Onde Estamos</title>
    <meta name="description" content="Encontre a Besni mais próxima da sua casa ou trabalho. Basta digitar o seu CEP. Temos diversas lojas pelo Estado de São Paulo."/>
    <!-- facebook -->
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Promoção Besni | Onde Estamos" />
    <meta property="og:description" content="Encontre a Besni mais próxima da sua casa ou trabalho. Basta digitar o seu CEP. Temos diversas lojas pelo Estado de São Paulo." />
    <meta property="og:url" content="http://www.promocaobesni.com.br/onde-estamos.aspx" />
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
<section id="banner-escrita-imagem">
	<div class="banner">
		<div class="centraliza">
			<div id="imagem-escrita"><img src="assets/imagens/escrita-banner.png" alt=""></div>
			<div id="imagem-carro"><img src="assets/imagens/imagem-carro.png" alt=""></div>
		</div>
	</div>
</section>

<!--CONTAINER-->
<section id="onde-estamos">
	<div class="container">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">
				onde estamos
			</h2>	
		</div>
		<div style="margin-top: 5%" class="text-center">
			<h3 class="basenine cinza">encontre uma besni perto de você</h3>
			<div class="traco-vermelho meio"></div>
			<div class="row">
				<div class="col-sm-8" style="margin: auto; float: none">
					<span>
						Quer encontrar a loja mais próxima da sua casa ou trabalho? Digite o CEP e clique em BUSCAR.
					</span>
				</div>
			</div>
			<div class="row" style="margin-top: 15px;">
				<div class="col-md-5" style="margin: auto; float: none">
					<form action="javascript:void(0)">
						<input type="text" placeholder="DIGITE SEU CEP" name="cep" class="cep" style="text-align: center">
						<br><br><br>
						<button class="btn-form" onClick="chama()">Buscar</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div id="map"></div>
</section>

<!--rodapé-->

    <!--footer-->
    <besni:footer runat="server" ID="footer" />

<!--scripts-->
    <besni:scripts runat="server" ID="scripts" />

</body>
</html>