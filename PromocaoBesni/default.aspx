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
<section id="banner">
	<div class="banner">
		<div id="imagem-carro"><img src="/assets/imagens/imagem-carro.png" alt="Imagem prêmios"></div>
	</div>
</section>

<!--CONTAINER-->
<section id="home">
	<div class="container">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">
				concorra, nas compras acima de R$200,00
			</h2>
			<button class="btn-home-cadastre">
				clique aqui e Cadastre seus cupons
			</button>	
		</div>
		<div style="margin-top: 70px">
			<div class="col-md-6">
				<h3 class="basenine text-uppercase cinza">saiba como participar</h3>
				<div class="traco-vermelho"></div>
				<span class="saiba-concorra">
					Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. 
				</span>
				<br><br>
				<em style="text-decoration: underline; font-weight: 600" class="vinho">
					saiba mais
				</em>
			</div>
			<div class="col-md-6">
				<h3 class="basenine text-uppercase cinza">concorra a prêmios</h3>
				<div class="traco-vermelho"></div>
				<span class="saiba-concorra">
					Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
				</span>
				<br><br>
				<em style="text-decoration: underline; font-weight: 600" class="vinho">
					saiba mais
				</em>
			</div>
		</div>
	</div>
	<div id="fique-ligado">
		<div class="container text-center">
			<span>fique ligado! <br>o próximo sorteio é no dia <br>18 de novembro<br></span>
			<button class="btn-confira-ganhadores">
				clique aqui e Confira os ganhadores
			</button>
		</div>
	</div>
	<div class="container" id="premios">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">
				conheça nossos prêmios
			</h2>
		</div>
		<div class="col-md-6">
			<div>
				<h3 class="basenine text-uppercase cinza">
					1 jeep <br>renegade 0km
				</h3>
				<div class="traco-vermelho"></div>
				<span class="saiba-concorra">
					Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. 
				</span>
				<br><br>
				<em style="text-decoration: underline; font-weight: 600" class="vinho">
					saiba mais
				</em>
				
			</div>
			<img src="assets/imagens/jeep.png" alt="Imagem Jeep">
		</div>
		<div class="col-md-6">
			<div>
				<h3 class="basenine text-uppercase cinza">
					30 motos <br>bull krc 50c lx
				</h3>
				<div class="traco-vermelho"></div>
				<span class="saiba-concorra">
					Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. 
				</span>
				<br><br>
				<em style="text-decoration: underline; font-weight: 600" class="vinho">
					saiba mais
				</em>
			</div>
			<img src="assets/imagens/moto-bull.png" alt="Imagem moto">
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<div style="margin: auto" class="traco-vermelho"></div>
		</div>
	</div>
	<div id="galeria-instagram">
		<div class="container text-center">
			<h2 class="basenine text-uppercase vermelho">
				Compartilhe suas fotos de  produtos Besni com a <br>nossa hashtag e apareça em nossas redes sociais!
			</h2><br><br>
			<img src="assets/imagens/marcacao-instagram.jpg" alt="">
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<div style="margin: auto; margin-bottom: 30px;" class="traco-vermelho"></div>
			<h3 class="basenine">#FecheoAnoComBesni</h3>
			<div class="redes">
				<img src="assets/imagens/icone-facebook.png" alt="Ícone facebook">
				<img src="assets/imagens/icone-instagram.png" alt="Ícone instagram">
				<p>/lojasbesni</p>
			</div>
		</div>
	</div>
	<div id="besni-proxima">
		<div class="container text-center">
			<span>tem uma <br>Besni perto de você!<br></span>
			<button class="btn-confira-ganhadores">
				clique aqui e veja aonde estamos
			</button>
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