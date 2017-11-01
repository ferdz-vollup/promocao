<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="meus-cupons.aspx.cs" Inherits="PromocaoBesni.meus_cupons" %>
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
		<div id="imagem-carro"><img src="/assets/imagens/imagem-carro.png" alt=""></div>
	</div>
</section>

<!--CONTAINER-->
<section id="ganhadores">
	<div class="container">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">cadastro</h2>	
		</div>
		<div class="row espaco-colunas" style="margin-top: 5%">          
			<div class="col-sm-7 col-md-5" style="margin: auto; float: none">
				<h3 class="basenine text-uppercase cinza" style="text-align: center;">
               		cupons cadastrados
               	</h3>
                <div class="traco-vermelho meio"></div>
                
				<div class="cupon" style="background:#c8962b;">
                	<h4 class="basenine">cód. 02689-9</h4>
                </div>                   
                <div class="cupon" style="background:#c8962b">
                	<h4 class="basenine">cód. 02689-9</h4>
               	</div>
                <div class="cupon" style="background:#97092a">
					<h4 class="basenine">cód. 02689-9</h4>
                </div>
                <div class="cupon" style="background:#97092a">
					<h4 class="basenine">cód. 02689-9</h4>
                </div>                  
            </div>
			<div class="col-sm-7 col-md-5 text-center" style="margin: auto; float: none; padding: 20px 15px;">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
            </div>
                                        
			<div class="row">
				<div class="col-xs-10 col-sm-4" style="margin: auto; float: none;margin-bottom: 5px;">
					<button class="btn-form" style="width: 100%;">cadastrar novos cupons</button>
					<button class="btn-form" style="width: 100%;margin-top: 10px;">voltar</button>
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