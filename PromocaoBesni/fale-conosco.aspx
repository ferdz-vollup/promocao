<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fale-conosco.aspx.cs" Inherits="PromocaoBesni.fale_conosco" %>
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
<section id="banner-escrita-imagem">
	<div class="banner">
		<div class="centraliza">
			<div id="imagem-escrita"><img src="assets/imagens/escrita-banner.png" alt=""></div>
			<div id="imagem-carro"><img src="assets/imagens/imagem-carro.png" alt=""></div>
		</div>
	</div>
</section>

<!--CONTAINER-->
<section id="fale-conosco">
	<div class="container">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">
				fale conosco
			</h2>	
		</div>
		<div id="formFaleConosco" style="margin-top: 70px">
			<form action="javascript:void(0)" method="post" novalidate enctype="multipart/form-data" id="faleConoscoForm" class="form">
				
                <input type="hidden" name="Destinatario" value="|vitor.emanuel@vollup.com">
				<input type="hidden" name="Obrigatorios" value="nome|email|mensagem">
				<input type="hidden" name="autoresposta" value="teste">
				<input type="hidden" name="idioma" value="pt">
				<input type="hidden" name="metodo" value="ajax">
				<input type="hidden" name="Assunto" id="assunto" value="Contato Fale Conosco - Promoção Besni">
                
                <div class="row">
					<div class="col-md-8 col-sm-8">
						<input type="text" placeholder="NOME" name="nome" class="inputs">
					</div>
					<div class="col-md-4 col-sm-4">
						<input type="text" id="telefone" name="telefone" class="inputs telefone">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6 col-sm-6">
						<input type="text" placeholder="CPF" id="cpf" name="cpf" class="inputs cpf">
					</div>
					<div class="col-md-6 col-sm-6">
						<input type="email" placeholder="E-MAIL" id="email" name="email" class="inputs">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-12">
						<textarea name="mensagem" rows="10" placeholder="DIGITE SUA MENSAGEM" class="inputs"></textarea>
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-12 text-right">
                        <div class="retorno-mensagem"></div>
						<button type="button" class="btn-form btn-limpar" style="margin-right: 10px;">Limpar</button>
						<button type="submit" class="btn-form btn-enviar">Enviar</button>
					</div>
				</div>
			</form>
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