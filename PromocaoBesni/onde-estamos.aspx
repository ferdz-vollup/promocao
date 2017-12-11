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
	<style>
	.loja {text-align:left;margin:40px 0}
	.loja h4 {margin-bottom:12px}
	.loja-item {margin:8px 0}
	.loja-item img {margin-right:4px}
	@media (min-width:992px){.margem{width:7%}.bloco1{width:43%;padding:0}}
	</style>
</head>

<body>
<!--menu-->
<besni:menu runat="server" ID="menu" />

<!--banner-->
<section id="banner-escrita-imagem">
	<div class="banner">
		<div class="centraliza">
			<div id="imagem-escrita"><img src="assets/imagens/escrita-banner.png" alt="Feche o ano com estilo"></div>
			<div id="imagem-carro"><img src="assets/imagens/imagem-carro.png" alt="imagem carro"></div>
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
						Saiba aonde estamos, encontre uma Besni próxima da sua casa ou do seu trabalho.
					</span>
				</div>
			</div>
			<div class="row" style="margin:35px 0 50px">
				<div class="col-md-1 margem"></div>
				<div class="col-md-5 bloco1">
					<div class="loja">
						<h4 class="vermelho basenine">M'BOI MIRIM</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Estrada do M'Boi Mirim, 830/840 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 4800 0460
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 9h/21h • dom. - 09h/17h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">CENTRO</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Vinte e Quatro de Maio, 185/189 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 6826
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sex. - 9h/21h • sáb. - 09h/20h • dom. - 10h/17h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">PENHA</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Dr. João Ribeiro, 428/452 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 6600
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 9h/21h • dom. e feriados - 10h/18h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SHOPPING ITAQUERA</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Contorno, Lojas 239/240 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2171 1000
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h • dom. e feriados - 11h/21h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SUZANO</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua General Francisco Glicério, 623 • Suzano - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 6650
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 08h30/20h30 • dom. e feriados - 09h/17h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">ITAQUAQUECETUBA</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Capitão José Leite, 70 • Itaquaquecetuba - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2927 2500
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 09h/20h30 • dom. e feriados - 09h/17h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">CACHOEIRINHA</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Parada Pinto, 417 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2141 9100
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 09h/21h • dom. e feriados - 10h/17h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SHOPPING INTERLAGOS</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Interlagos, 2255, Âncora 06 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2148 4450
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h20 • dom. e feriados - 11h/22h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">GUARULHOS</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Dom Pedro II, 103/107 • Guarulhos - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 7800
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sex. - 09h/20h30 • sáb. - 08h30/20h30 • dom. especiais - 10h/16h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">OSASCO II</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Antonio Agú, 369 • Osasco - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2169 2450
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 08h30/21h20 • dom. - 09h30/17h20
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SHOPPING TABOÃO</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rod. Régis Bittencourt - Km 271,5 • Taboão da Serra - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 9600
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h • dom. e feriados - 11h/21h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SANTO AMARO II</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Adolfo Pinheiro, 10 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 7650
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 08h/20h30 • feriados - 09h/17h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">CAPÃO REDONDO</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Comendador Santana, 360 • Capão Redondo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2388 3650
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 08h30/21h • dom. e feriados - 09h/17h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">GRAND PLAZA (STO. ANDRÉ)</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Industrial, 600, Arco 52/53/54 • Santo André - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 3350
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h • dom. e feriados - 11h/21h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SHOPPING MAUÁ</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Governador Mario Covas Júnior, 1 - Loja 220 • Mauá - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 3336 2900
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h50 • dom. e feriados - 11h/21h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SÃO BERNARDO</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Mar. Deodoro, 1356/1360 • São Bernardo do Campo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 9850
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 09h/20h30 •  dom. - 09h/17h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">CENTRAL PLAZA SHOPPING</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Dr. Francisco de Mesquita, 1000, Arco M • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 7900
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h • dom. e feriados - 11h/21h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SANTOS</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Marcílio Dias, 02/06 • Santos - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							13 2101 1900
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 09h/21h30 • dom. - 12h/21h30
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="loja">
						<h4 class="vermelho basenine">SHOPPING CANTAREIRA</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Raimundo Pereira de Magalhães, Cantareira • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 4800 0540
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h • dom. e feriados - 11h/21h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SHOPPING BOULEVARD TATUAPÉ</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Gonçalves Crespo, Lojas 224B/22B e 32/322 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2124 7550
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h • dom. e feriados - 11h/21h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SHOPPING ARICANDUVA</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Aricanduva, 5555 Arco 102 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2141 6950
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a dom. e feriados - 10h/22h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SÃO MIGUEL</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Marechal Tito, 655 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2141 9150
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 08h30/20h • dom. e feriados - 09h/17h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">MOGI DAS CRUZES</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Dr. Deodato Wertheimer, 1437 • Mogi das Cruzes - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 7600
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sex. - 09h/20h30 • sáb. - 09h/20h • dom. e feriados - 09h/16h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">LAPA</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua 12 de Outubro, 232/238 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 6900
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 08h30/20h30 • dom. e feriados - 09h/16h30
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">JABAQUARA</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Jabaquara, 1495 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 6150
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 09h/21h • dom. e feriados - 10h/18h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">INTERNACIONAL SHOPPING GUARULHOS</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rod. Presidente Dutra, Km 230 - Loja K 01 • Guarulhos - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 7850
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h • dom. e feriados - 11h/21h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">OSASCO I</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Dona Primitiva Vianco, 561 • Osasco - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2169 2400
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 08h30/20h • dom. - 09h/16h45
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SHOPPING UNIÃO OSASCO</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. dos Autonomistas, 1400, Âncora L • Osasco - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2927 3700
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h20 • dom. e feriados - 11h/21h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SANTO AMARO I</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Praça Floriano Peixoto, 02 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 6100
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 08h/21h • dom. e feriados - 09h/17h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">LARGO TREZE DE MAIO</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Paulo Eiró, 80 • São Paulo - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 7951
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 08h/21h • dom. - 09h/17h
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">OLIVEIRA LIMA</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Coronel Oliveira Lima, 383 • Santo André - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 1200
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 09h/20h30
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">ATRIUM SHOPPING</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Geovanni Batistta Pirelli, 155 • Santo André - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 3594 9850
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h • dom. e feriados - 12h/21h 
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">MAUÁ</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. Barão de Mauá, 313 • Mauá - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2147 3300
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 09h/21h • dom. - 10h/18h 
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SHOPPING PRAÇA DA MOÇA</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Manoel da Nóbrega, 712 - Loja 318 • Diadema - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							11 2927 4150
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h • dom. e feriados - 11h/21h 
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SÃO VICENTE</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Rua Martim Afonso, 410/420 • São Vicente - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							13 2104 8400
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 09h/21h • dom. e feriados - 10h30/18h30 
						</div>
					</div>
					<div class="loja">
						<h4 class="vermelho basenine">SHOPPING PARQUE DAS BANDEIRAS</h4>
						<div class="loja-item">
							<img src="assets/imagens/icone-endereco.png">
							Av. John Boyd Dunlop, 3900, Lojas 2054/2055 • Campinas - SP
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-celular.png">
							19 3014 8500
						</div>
						<div class="loja-item">
							<img src="assets/imagens/icone-tempo.png">
							seg. a sáb. - 10h/22h • dom. e feriados - 12h/20h
						</div>
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