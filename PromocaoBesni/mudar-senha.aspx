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
    <title>Promoção Besni | Esqueci minha senha</title>
    <meta name="description" content="Altere sua senha e e participe agora. Confira seu email e Não fique de fora!"/>
    <!-- facebook -->
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Promoção Besni | Esqueci minha senha" />
    <meta property="og:description" content="Altere sua senha e e participe agora. Confira seu email e Não fique de fora!" />
    <meta property="og:url" content="http://www.promocaobesni.com.br/mudar-senha.aspx" />
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
			
			<div class="row">
				<div class="col-sm-8" style="margin: auto; float: none">
					<span>
						Você pode alterar sua senha caso a esqueça. A sua senha será utilizada para acessar a área restrita para que você confira os seus cupons ou cadastre outros. 
					</span>
				</div>
			</div>
            <div class="traco-vermelho meio"></div>
			<div class="row" style="margin-top: 50px;">
				<div class="col-md-5" style="margin: auto; float: none">
					<form class="recuperaPass" action="/ajax/acoes.aspx">
                            <input type="hidden" name="acao" value="mudarSenha" />
                            <input type="hidden" name="cpf" value="25613748829"/>

                            <div class="inputWrapper">
						            <div class="labelForm">Nova Senha</div>
						            <input name="senha" class="inputs" type="password">
                            </div>

                            <div class="inputWrapper">
                                <div class="labelFormTwo"><span>Confirmar</span> Senha</div>
						        <input name="senha2" class="inputs" type="password">
                            </div>					        

                                <input type="submit" value="Enviar" class="novaSenhaClick btn-form btn-enviar" />
                                
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

</body>
</html>