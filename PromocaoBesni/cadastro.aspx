<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="PromocaoBesni.cadastro" %>

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
		<div id="imagem-carro"><img src="assets/imagens/imagem-carro.png" alt=""></div>
	</div>
</section>

<!--CONTAINER-->
<section id="cadastro">
	<div class="container">
		<div class="text-center">
			<h2 class="basenine text-uppercase vermelho">
				cadastro
			</h2>	
		</div>
		<div id="formCadastro" style="margin-top: 70px">
			<div class="row">
				<div class="col-md-12">
					<h4 class="basenine text-uppercase vermelho">
						Dados pessoais
					</h4><br>
				</div>
			</div>
			
			<%--<form action="javascript:void(0)" method="post" novalidate enctype="multipart/form-data" id="cadastroForm" class="form">--%>
			<form action="/ajax/acoes.aspx" method="post" class="form">
                <input type="hidden" name="acao" value="novoCadastro" />
				<%--<input type="hidden" name="Destinatario" value="|vitor.emanuel@vollup.com">
				<input type="hidden" name="Obrigatorios" value="nome|email|mensagem">
				<input type="hidden" name="autoresposta" value="teste">
				<input type="hidden" name="idioma" value="pt">
				<input type="hidden" name="metodo" value="ajax">
				<input type="hidden" name="Assunto" id="assunto" value="Contato Fale Conosco - Promoção Besni">--%>
				
				<div class="row">
					<div class="col-md-12">
						<div style="width: 50px" class="labelForm">NOME</div>
						<input type="text" name="nome" class="inputs">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div style="width: 50px" class="labelForm">CPF</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">RG</div>
						<input type="text" name="rg" class="inputs rg">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div class="labelForm">Data de nascimento</div>
						<input type="text" name="dtnascimento" class="inputs data-nasc">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">Sexo</div>
						<div class="text-uppercase">
							<label for="masc" class="labelRadio">
								<input type="radio" id="masc" name="sexo" class="inputs" value="M"><span>Masculino</span>
							</label>
							<label for="fem" class="labelRadio">
								<input type="radio" id="fem" name="sexo" class="inputs" value="F"><span>Feminino</span>
							</label>
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div class="labelForm">Telefone</div>
						<input type="text" name="telefone" class="inputs telefone">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">Celular</div>
						<input type="text" name="celular" class="inputs cel">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div class="labelForm">E-mail</div>
						<input type="email" name="email" class="inputs">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">
							<span>Confirmar</span> E-mail</div>
						<input type="email" name="email2" class="inputs">
					</div>
				</div>
				
				<div class="row not-flex " style="margin-top: 50px;">
					<div class="col-sm-5 col-md-3">
						<div class="labelForm">você tem cartão besni ?</div>
						<div class="text-uppercase">
							<label for="sim" class="labelRadio">
								<input type="radio" id="sim" name="tem cartao" class="inputs" value="Sim"><span>Sim</span>
							</label>
							<label for="nao" class="labelRadio">
								<input type="radio" id="nao" name="tem cartao" class="inputs" value="Não"><span>Não</span>
							</label>
						</div>
					</div>
				</div>

                <div class="row not-flex cartao" style="margin-top: 50px;display: none">
					<div class="col-sm-12">
						<div class="labelFormTwo">número do cartão</div>
						<div style="margin-left: -5px" class="numero-cartao">
							<div class="col-md-2 col-xs-3">
								<input type="text" name="cartao1" class="inputs" maxlength="4">
							</div>
							<div class="col-md-2 col-xs-3">
								<input type="text" name="cartao2" class="inputs" maxlength="4">
							</div>
							<div class="col-md-2 col-xs-3">
								<input type="text" name="cartao3" class="inputs" maxlength="4">
							</div>
							<div class="col-md-2 col-xs-3">
								<input type="text" name="cartao4" class="inputs" maxlength="4">
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 50px;">
					<div class="col-md-12">
						<h4 class="basenine text-uppercase vermelho">
							Endereço
						</h4><br>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-8">
						<div class="labelForm">CEP</div>
						<input type="text" name="cep" class="inputs cep">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-8">
						<div class="labelForm">Logradouro</div>
						<input type="text" name="logradouro" class="inputs">
					</div>
					<div class="col-sm-4">
						<div class="labelForm text-center" style="margin-right: 10px;">Número</div>
						<input type="text" name="numero" class="inputs">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div class="labelForm">Complemento</div>
						<input type="text" name="complemento" class="inputs">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">Bairro</div>
						<input type="text" name="bairro" class="inputs">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div class="labelForm">Cidade</div>
						<input type="text" name="cidade" class="inputs">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">Estado</div>
						<input type="text" name="uf" class="inputs" maxlength="2">
					</div>
				</div>
				
				<div class="row" style="margin-top: 50px;">
					<div class="col-md-12">
						<h4 class="basenine text-uppercase vermelho">
							Login
						</h4><br>
					</div>
				</div>
				
				<%--<div class="row" style="margin-top: 10px;">
					<div class="col-md-6">
						<div style="width: 50px;" class="labelForm">CPF</div>
						<input type="text" name="cpf2" class="inputs">
					</div>
				</div>--%>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div style="width: 50px;" class="labelForm">Senha</div>
						<input type="password" name="senha" class="inputs">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">
							<span>Confirmar</span> Senha</div>
						<input type="password" name="senha2" class="inputs">
					</div>
				</div>
				<div class="row" style="margin-top: 50px;">
					<div class="col-md-12">
						<div>
							<label for="termos" class="labelRadio">
								<input type="radio" id="termos" name="aceito os termos" class="inputs" value="Sim"><span>Li e aceito todos as condições do regulamento da campanha.</span>
							</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div>
							<label for="novidades" class="labelRadio">
								<input type="radio" id="novidades" name="desejo receber noidades" class="inputs" value="Sim"><span>Desejo receber novidades e atualizações sobre produtos via e-mail</span>
							</label>
						</div>
					</div>
				</div>
				
				<div class="row not-flex" style="margin-top: 50px;">
					<div class="col-md-12 text-right">
						<button type="button" class="btn-form btn-limpar" style="margin-right: 10px;">Limpar</button>
						<%--<button type="submit" class="btn-form btn-enviar">Enviar</button>--%>
                        
                        <input type="submit" value="Enviar" class="btn-form btn-enviar" />
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
