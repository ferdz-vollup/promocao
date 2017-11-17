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
			<form action="javascript:void(0)" method="post" enctype="multipart/form-data"  novalidate id="faleConoscoForm" class="form">
				
                <input type="hidden" name="Destinatario" value="|fernando.santos@vollup.com">
				<input type="hidden" name="Obrigatorios" value="|nome|email|mensagem">
				<input type="hidden" name="autoresposta" value="teste">
				<input type="hidden" name="idioma" value="pt">
				<input type="hidden" name="metodo" value="ajax">
				<input type="hidden" name="Assunto" id="assunto" value="Contato Fale Conosco - Promoção Besni">
                
                <div class="row">
					<div class="col-md-8 col-sm-8">
						<input type="text" placeholder="NOME" name="nome" id="nome" class="inputs">
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
						<button type="submit" class="btn-form btn-contato" data-form="formFaleConosco">Enviar</button>
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

    <script>
        jQuery(".btn-contato").click(function () {
           

            var idForm = "#faleConoscoForm";
            var inputs = jQuery(idForm).find(".inputs:not(.no-obg)");
            for (i = 0; i < inputs.length; i++) {
                if (inputs[i].value == "") {
                    jQuery(inputs[i]).addClass("error");

                    $('html, body').animate({
                        scrollTop: $(inputs[i]).offset().top - 180
                    }, 1000);

                    console.log("erro de campos com o valor vazio, campo: " + inputs[i].name);
                    return;

                    /* Teste by Paulo */
                    alert("É necessário preencher " + inputs[i].name);

                }
                else {
                    jQuery(inputs).removeClass("error");
                }
            }
            
            if (jQuery(idForm).find(".error").length == 0) {
                var eml = jQuery("input[type='email']").val();
                console.log(eml);
                var filtroregexemail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
                console.log(filtroregexemail.test(eml));
                if (filtroregexemail.test(eml) == true) {
                    
                    enviaFerdz(idForm);
                    jQuery(idForm).submit();
                 } else {
                    console.log("erro email");
                    jQuery(eml).addClass("error");
                    console.log("err");
                }
            }
        });
    </script>

</body>
</html>