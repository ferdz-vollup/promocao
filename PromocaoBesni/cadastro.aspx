<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PromocaoBesni._default" %>
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
			<h2 class="basenine text-uppercase vermelho">
				cadastro
			</h2>	
		</div>
		
		<div class="row metodo-compras">
			<div class="col-sm-1"></div>
			<div class="col-sm-5">
				<h3 class="basenine">
					fiz minhas compras <br>
					com o <span class="vermelho">cartão besni</span>
				</h3>
				<div class="traco-vermelho"></div>
				<div class="row">
					<div class="col-md-3 col-xs-3 text-center" style="margin-top: 10px;">
						<img src="assets/imagens/icone-cartao-besni.png" alt="">
					</div>
					<div class="col-md-9 col-xs-9">
						<span class="saiba-concorra">
							Nas compras com Cartão Besni você dobra seus números da sorte, e tem mais chances de ganhar!
						</span>
					</div>
				</div>
				<button class="btn-form" data-cartao="Sim">Clique aqui</button>
			</div>
			<div class="col-sm-5">
				<h3 class="basenine">
					fiz minhas compras <br>
					de <span class="vermelho">outras formas</span>
				</h3>
				<div class="traco-vermelho"></div>
				<div class="row">
					<div class="col-md-3 col-xs-3 text-center" style="margin-top: 10px;">
						<img src="assets/imagens/icone-compras-acima.png" width="77%" alt="">
					</div>
					<div class="col-md-9 col-xs-9">
						<span class="saiba-concorra">
							A cada R$200 em compras você ganha 1 número da sorte para participar para os sorteios semanais, e 1 número para o sorteio final!
						</span>
					</div>
				</div>
				<button class="btn-form" data-cartao="Nao">Clique aqui</button>
			</div>
			<div class="col-sm-1"></div>
		</div>
		
		
		<div id="formCadastro">
			<div class="row">
				<div class="col-md-12">
					<h4 class="basenine text-uppercase vermelho">
						Dados pessoais
					</h4><br>
				</div>
			</div>
			
			<form action="javascript:void(0)" method="post" novalidate enctype="multipart/form-data" id="cadastroForm" class="form">
			
				<input type="hidden" name="Assunto" id="assunto" value="Cadastro - Promoção Besni">
				<input type="hidden" name="Cartao Besni" value="">
				
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
						<input type="text" name="cpf" class="inputs cpf">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div class="labelForm">Data de nascimento</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">Sexo</div>
						<div class="text-uppercase">
							<label for="masc" class="labelRadio">
								<input type="radio" id="masc" name="sexo" class="inputs" value="Masculino"><span>Masculino</span>
							</label>
							<label for="fem" class="labelRadio">
								<input type="radio" id="fem" name="sexo" class="inputs" value="Feminino"><span>Feminino</span>
							</label>
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div class="labelForm">Telefone</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">Celular</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div class="labelForm">E-mail</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">
							<span>Confirmar</span> E-mail</div>
						<input type="text" name="cpf" class="inputs cpf">
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
						<input type="text" name="nome" class="inputs">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-8">
						<div class="labelForm">Logradouro</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
					<div class="col-sm-4">
						<div class="labelForm text-center" style="margin-right: 10px;">Número</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div class="labelForm">Complemento</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">Bairro</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div class="labelForm">Cidade</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">Estado</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
				</div>
				
				<div class="row" style="margin-top: 50px;">
					<div class="col-md-12">
						<h4 class="basenine text-uppercase vermelho">
							Login
						</h4><br>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6">
						<div style="width: 50px;" class="labelForm">CPF</div>
						<input type="text" name="nome" class="inputs">
					</div>
				</div>
				<div class="row" style="margin-top: 10px;">
					<div class="col-sm-6">
						<div style="width: 50px;" class="labelForm">Senha</div>
						<input type="text" name="cpf" class="inputs cpf">
					</div>
					<div class="col-sm-6">
						<div class="labelFormTwo text-center">
							<span>Confirmar</span> Senha</div>
						<input type="text" name="cpf" class="inputs cpf">
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