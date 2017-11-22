<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PromocaoBesni._default1" %>

<%@ Register Src="~/inc/head.ascx" TagPrefix="besni" TagName="head" %>
<%@ Register Src="~/inc/menu.ascx" TagPrefix="besni" TagName="menu" %>
<%@ Register Src="~/inc/footer.ascx" TagPrefix="besni" TagName="footer" %>
<%@ Register Src="~/inc/scripts.ascx" TagPrefix="besni" TagName="scripts" %>

<!doctype html>
<html>

<!--head-->
<head>
    <besni:head runat="server" ID="head" />
<title>Promoção Besni | Feche o ano com estilo</title>
<meta name="description" content="Efetue uma compra de R$200,00 ou mais em qualquer loja Besni e cadastre o cupom fiscal aqui. Quanto mais compras você realizar, mais chances de ganhar!"/>
<!-- facebook -->
<meta property="og:locale" content="pt_BR" />
<meta property="og:type" content="website" />
<meta property="og:title" content="Promoção Besni | Feche o ano com estilo" />
<meta property="og:description" content="Efetue uma compra de R$200,00 ou mais em qualquer loja Besni e cadastre o cupom fiscal aqui. Quanto mais compras você realizar, mais chances de ganhar!" />
<meta property="og:url" content="http://www.promocaobesni.com.br/" />
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
<section id="banner">
	<div class="banner">
		<div id="imagem-carro"><img src="/assets/imagens/imagem-carro.png" alt=""></div>
	</div>
</section>

<!--CONTAINER-->
<section id="home">
	<div class="container">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">
				concorra a cada R$200,00 em compras 
			</h2>
            <a href="/login.aspx" title="Clique aqui e cadastre seus cupons">
			    <button class="btn-home-cadastre">
				    clique aqui e Cadastre seus cupons
			    </button>	
            </a>
		</div>
		<div style="margin-top: 70px">
			<div class="col-md-6">
				<h3 class="basenine text-uppercase cinza">saiba como participar</h3>
				<div class="traco-vermelho"></div>
				<span class="saiba-concorra">
					Basta efetuar uma compra de R$200,00 ou mais a partir do dia 26/11/2017 em qualquer loja Besni e cadastrar o cupom fiscal aqui no site da promoção. Quanto mais compras você realizar, mais chances de ganhar! 
				</span>
				<br><br>
                <a href="/como-participar.aspx" title="Saiba mais">
				    <em style="text-decoration: underline; font-weight: 600" class="vinho">
					    saiba mais
				    </em>
                </a>
			</div>
			<div class="col-md-6">
				<h3 class="basenine text-uppercase cinza">concorra a prêmios</h3>
				<div class="traco-vermelho"></div>
				<span class="saiba-concorra">
					Serão sorteadas 10 motos 0km a cada sorteio periódico, totalizando 30 prêmios, e 01 Jeep Renegade Custom 0km no sorteio final da promoção.
				</span>
				<br><br>
                <a href="/premios.aspx" title="Saiba mais">
				    <em style="text-decoration: underline; font-weight: 600" class="vinho">
					    saiba mais
				    </em>
                </a>
			</div>
		</div>
	</div>
	<div id="fique-ligado">
		<div class="container text-center">
			<span id="proximoSorteio" runat="server"></span>
            <a href="/ganhadores.aspx" title="Clique aqui e confira os ganhadores">
			    <button class="btn-confira-ganhadores">
				    clique aqui e Confira os ganhadores
			    </button>
            </a>
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
					Jepp Renegade Custom, modelo 2018, 05 (cinco) portas, flex, no valor de R$76.000,00 (setenta e seis mil reais). 
				</span>
				<br><br>
                <a href="/premios.aspx" title="Saiba mais">
				    <em style="text-decoration: underline; font-weight: 600" class="vinho">
					    saiba mais
				    </em>
				</a>
			</div>
			<img src="assets/imagens/jeep.png" alt="">
		</div>
		<div class="col-md-6">
			<div>
				<h3 class="basenine text-uppercase cinza">
					30 motos <br>bull krc 50c lx
				</h3>
				<div class="traco-vermelho"></div>
				<span class="saiba-concorra">
					Motocicleta 0km da marca Bull Motors, Modelo KRC 50 LX, 2015/2015, gasolina, no valor de R$5.500,00 (cinco mil e quinhentos reais). 
				</span>
				<br><br>
                <a href="/premios.aspx" title="Saiba mais">
				    <em style="text-decoration: underline; font-weight: 600" class="vinho">
					    saiba mais
				    </em>
                </a>
			</div>
			<img src="assets/imagens/moto-bull.png" alt="">
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<div style="margin: auto" class="traco-vermelho"></div>
		</div>
	</div>
	<div id="galeria-instagram" class="container">
		<div class="container text-center">
			<h2 class="basenine text-uppercase vermelho">
				Compartilhe suas fotos de  produtos Besni com a <br>nossa hashtag e apareça em nossas redes sociais!
			</h2>
		</div>
	</div>

    <div class="container" id="divInstagram" runat="server">
        
    </div>

	<div class="container">
		<div class="text-center">
			<div style="margin: 3rem auto 30px auto;" class="traco-vermelho"></div>
			<h3 class="basenine">#FecheoAnoComBesni</h3>
			<div class="redes">
                <a href="https://www.facebook.com/LojasBesni/" title="Lojas Besni no facebook"  target="_blank">
                    <img src="assets/imagens/icone-facebook.png" alt="ícone facebook">
                </a>
                <a href="https://www#divInstagramgram.com/lojasbesni/" title="Lojas Besni no instagram"  target="_blank">
				    <img src="assets/imagens/icone-instagram.png" alt="ícone instagram">
                </a>
                <a href="https://www.youtube.com/user/LojasBesni/" title="Lojas Besni no youtube"  target="_blank">
				    <img src="assets/imagens/icone-youtube.png" alt="ícone youtube">
                </a>
				<p>/lojasbesni</p>
			</div>
		</div>
	</div>
	<div id="besni-proxima">
		<div class="container text-center">
			<span>tem uma <br>Besni perto de você!<br></span>
            <a href="/onde-estamos.aspx" title="Clique aqui e veja aonde estamos">
			    <button class="btn-onde-estamos">
				    clique aqui e veja aonde estamos
			    </button>
            </a>
		</div>
	</div>
</section>

<!--rodapé-->

    <!--footer-->
    <besni:footer runat="server" ID="footer" />

<!--scripts-->
    <besni:scripts runat="server" ID="scripts" />

    <script type="text/javascript">
    </script>

</body>
</html>
