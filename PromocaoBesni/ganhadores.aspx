﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ganhadores.aspx.cs" Inherits="PromocaoBesni.ganhadores" %>
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

    <style type="text/css">

        /* Overriding file responsive.css:69*/

        div.col-sm-8 col-md-5 > span > br {
            display: none;
        }
                
        @media screen and (max-width: 768px) {

            div.col-sm-8 col-md-5 > span > br {
                display: block;
            }
        }
        
        


    </style>
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
			<h2 class="basenine text-uppercase vermelho">
				ganhadores
			</h2>
			<div class="row" style="margin-top: 50px;">
				<div class="col-sm-8 col-md-5" style="margin: auto;float: none">
					<span style="line-height: 30px;">
						Clique nas datas dos sorteios e confira os ganhadores.
					</span>
				</div>
			</div>
			<div class="traco-vermelho meio"></div>
		</div>
		<div class="row" style="margin-top: 40px;">
			<div class="col-sm-10 col-md-8 sorteios" style="margin: auto;float: none">
				<div class="row" id="divPai" runat="server">
			
				</div>
			</div>
		</div>
		<div class="traco-vermelho meio" style="margin-top: 30px;"></div>
		<div class="row text-center">
			<div class="col-sm-8 col-md-5" style="margin: auto;float: none">
				<span style="line-height: 30px;">
					Não foi dessa vez? Realize novas compras na Besni <br />e aumente suas chances de ganhar!
				</span>
                <a href="/cadastrar-cupom.aspx" title="Cadastrar novos cupons">
				    <button style="margin-top: 40px" class="btn-form">cadastrar novos cupons</button>
                </a>
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