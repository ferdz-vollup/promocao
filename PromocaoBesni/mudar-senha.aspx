<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mudar-senha.aspx.cs" Inherits="PromocaoBesni.mudar_senha" %>

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
<section id="onde-estamos">
	<div class="container">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">
				mudar senha
			</h2>	
		</div>
		<div style="margin-top: 5%" class="text-center">
			<h3 class="basenine cinza">Nam nec tellus a odio tincidunt auctor a ornare odio.</h3>
			<div class="traco-vermelho meio"></div>
			<div class="row">
				<div class="col-sm-8" style="margin: auto; float: none">
					<span>
						Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.
					</span>
				</div>
			</div>
			<div class="row" style="margin-top: 50px;">
				<div class="col-md-5" style="margin: auto; float: none">
					<form action="/ajax/acoes.aspx">
                            <input type="hidden" name="acao" value="mudarSenha" />
                            <input type="text" name="cpf" value="25613748829"/>

                            <div class="inputWrapper">
						            <div class="labelForm">Nova Senha</div>
						            <input name="senha" class="inputs" type="password">
                            </div>

                            <div class="inputWrapper">
                                <div class="labelFormTwo"><span>Confirmar</span> Senha</div>
						        <input name="senha2" class="inputs" type="password">
                            </div>					        

                                <input type="submit" data-form="formCadastrar" value="Enviar" class="btn-form btn-enviar"" />
                                
					</form>
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

    <script type="text/javascript">



        jQuery(".btn-enviar").click(function () {
            if ($("input[name='senha']").val() != $("input[name='senha2']").val()) {
                $("input[name='senha2']").addClass("error");
                console.log("Confirmação de sua nova senha não corresponde àquela digitada no campo anterior.");
                return;
            }

            else {
                jQuery(inputs).removeClass("error");
            }
           
            if (jQuery(idForm).find(".error").length == 0) {
                var eml = jQuery("input[type='email']").val();
                console.log(eml);
                var filtroregexemail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
                console.log(filtroregexemail.test(eml));
                if (filtroregexemail.test(eml) == true) {
                    if (idForm == "#faleConoscoForm") {
                        enviaFerdz(idForm);
                        jQuery(idForm).submit();
                    }
                    else {
                        console.log();
                        //envia(idForm);
                        jQuery(idForm).submit();
                    }
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