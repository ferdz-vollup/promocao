<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PromocaoBesni.login" %>
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
<section id="login">
	<div class="container">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">cadastro</h2>	
		</div>
		<div class="row espaco-colunas" style="margin-top: 70px">
			<div class="col-sm-6 col-md-4" style="float: none; margin: auto">
	            <h3 class="basenine text-uppercase cinza" id="h3">já sou cadastrado</h3>
				<div class="traco-vermelho"></div>
				<div style="padding:0;margin-bottom: 50px;">
                	<form action="/ajax/acoes.aspx" method="post" novalidate enctype="multipart/form-data" class="form" id="loginForm">
                            <input type="hidden" id="acao" name="acao" value="FazerLogin" />
                		<input type="text" placeholder="CPF" id="cpf" name="cpf" class="cpf inputs">
                		<input style="margin-top: 10px;" type="password" placeholder="senha" id="senha" name="senha" class="inputs">
                		<div style="height: 15px;"></div>
                		<div style="display: inline-block; vertical-align: middle;width: 49%;">
                			<a href="javascript:void(0);" onclick="esqueciSenha(this.rel);" rel="1" id="linkSenha" style="color:#6a6a6a;text-decoration: underline;">esqueci minha senha</a>
                		</div>
                		<div style="display: inline-block; vertical-align: middle;width: 49.7%; text-align: right">
                			<button type="submit" class="btn-form btn-enviar">Enviar</button>
                		</div>
                	</form>
				</div>
                <h3 class="basenine text-uppercase cinza">primeiro acesso</h3>
                <div class="traco-vermelho"></div>
                <a href="/cadastro.aspx">
				    <button class="btn-form" style="width: 100%;">cadastre-se agora</button>
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

    <script type="text/javascript">
        $(document).ready(function (e) {
            var url = location.href;
            if (url.indexOf("erroLogin") > 1) {
                alert("Ops... Tem um erro com usuário e/ou senha.");
                $('html, body').animate({
                    scrollTop: $('#loginForm').offset().top
                }, 1000);
                return false;
            };
        });

        function esqueciSenha(valor) {
            if(valor == 1){
            $('#linkSenha').html("voltar");
            $('#h3').html("esqueci minha senha");
            $('#acao').attr('value', 'esqueciSenha');
            $('#senha').hide();
            $('#linkSenha').attr('rel', '2');
            }
            else {
                $('#linkSenha').html("esqueci minha senha");
                $('#h3').html("já sou cadastrado");
                $('#acao').attr('value', 'FazerLogin');
                $('#senha').show();
                $('#linkSenha').attr('rel', '1');
            }
        }
    </script>

</body>
</html>