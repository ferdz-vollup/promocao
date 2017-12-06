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
    <title>Promoção Besni | Fale Conosco</title>
    <meta name="description" content="A Besni quer ouvir você. Deixe sua mensagem para nós. Sua opinião é muito importante! Reclamações, sugestões ou opiniões são sempre bem-vindas."/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />   
    <!-- facebook -->
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Promoção Besni | Fale Conosco" />
    <meta property="og:description" content="A Besni quer ouvir você. Deixe sua mensagem para nós. Sua opinião é muito importante! Reclamações, sugestões ou opiniões são sempre bem-vindas." />
    <meta property="og:url" content="http://www.promocaobesni.com.br/fale-conosco.aspx" />
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
			<div id="imagem-escrita"><img src="assets/imagens/escrita-banner.png" alt="Feche o ano com estilo"></div>
			<div id="imagem-carro"><img src="assets/imagens/imagem-carro.png" alt="imagem carro"></div>
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
				
                <input type="hidden" name="Destinatario" value="|contatopromo@lojasbesni.com.br">
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
						<input type="text" placeholder="TELEFONE" id="telefone" name="telefone" class="inputs telefone">
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
						<button type="button" class="btn-form btn-limpar" style="margin-right: 10px;">Limpar</button>
                        <button type="submit" class="btn-form btn-contato" data-form="formFaleConosco">Enviar</button>
                        <div class="retorno-mensagem"></div>
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

                    /* Teste by Paulo (not working) */
                    alert("É necessário preencher " + inputs[i].name);

                }
                else {
                    jQuery(inputs).removeClass("error");
                }
            }
            
            if (jQuery(idForm).find(".error").length == 0) {
                var eml = jQuery("input[type='email']");
                console.log(eml);
                var filtroregexemail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
                console.log(filtroregexemail.test(eml));
                if (filtroregexemail.test(eml.val()) == true) {
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