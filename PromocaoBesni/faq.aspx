<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="PromocaoBesni.faq" %>
<%@ Register Src="~/inc/head.ascx" TagPrefix="besni" TagName="head" %>
<%@ Register Src="~/inc/menu.ascx" TagPrefix="besni" TagName="menu" %>
<%@ Register Src="~/inc/footer.ascx" TagPrefix="besni" TagName="footer" %>
<%@ Register Src="~/inc/scripts.ascx" TagPrefix="besni" TagName="scripts" %>

<!doctype html>
<html>

<!--head-->
<head>

    <besni:head runat="server" ID="head" />
    <title>Promoção Besni | Perguntas frequentes</title>
    <meta name="description" content="Confira as perguntas frequentes, saiba tudo sobre a promoção e como participar."/>
    <!-- facebook -->
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Promoção Besni | Perguntas frequentes" />
    <meta property="og:description" content="Confira as perguntas frequentes, saiba tudo sobre a promoção e como participar." />
    <meta property="og:url" content="http://www.promocaobesni.com.br/faq.aspx" />
    <meta property="og:site_name" content="Promoção Besni" />
    <meta property="og:image" content="http://www.promocaobesni.com.br/assets/imagens/Besni_Share_2017.jpg" />
    <meta property="og:image:type" content="image/jpeg">
    <meta property="og:image:width" content="315"> <!-- PIXELS -->
    <meta property="og:image:height" content="600"> <!--4 PIXELS -->


        <style type="text/css">

                table {
                    text-align: center;
                }
                th:nth-child(2) {
                    width: 450px;
                }
                td, th {
                    border: 1px solid #ccc;
                    border-left: none;
                    border-bottom: none;
                    padding: 5px auto;
                }
                th {
                    font-weight: 700;
                    width: 150px;
                    text-align: center;
                    border: 2px solid #ccc;
                }
                
                tr:last-child td {
                    border-bottom: 1px solid #ccc;
                }

                tr > td:first-of-type {
                    border-left: 1px solid #ccc;
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
<section id="faq">
	<div class="container">
		<div class="text-left">
			<h2 class="basenine text-uppercase vermelho">
				perguntas frequentes
			</h2>
			<!--<a href="regulamento.aspx" title="Ver regulamento da promoção"><h4 class="basenine text-uppercase azul-claro underline-azul">
				regulamento
			</h4></a>-->	
		</div>
		<div style="margin-top: 10%">
			
			<h3 class="basenine cinza">Qual o período da promoção?</h3><br>
			<span style="line-height: 30px;" >
				26/11/2017 a 31/12/2017 
			</span>
			<br><br><br><br>
			<h3 class="basenine cinza">Qual o período de cadastramento no site para participar da promoção?</h3><br>
			
            <table>
                <tr>
                    <th>Período</th>
                    <th>Cadastros efetuados até</th>
                    <th>Apuração</th>
                </tr>
                <tr>
                    <td>1º</td>
                    <td>Das 0h de 26/11 às 23h59min do dia 08/12/17</td>
                    <td>09/12/17</td>
                </tr>
                <tr>
                    <td>2º</td>
                    <td>Das 0h de 09/12/17 às 23h59min do dia 15/12/17</td>
                    <td>16/12/17</td>
                </tr>
                <tr>
                    <td>3º</td>
                    <td>Das 0h de 16/12/17 às 23h59min do dia 22/12/17</td>
                    <td>23/12/17</td>
                </tr>
                <tr>
                    <td>Sorteio final</td>
                    <td>Das 0h de 26/11 às 23h59min de 31/12/17</td>
                    <td>03/01/2018</td>
                </tr>
            </table>

            <br><br><br><br>
			<h3 class="basenine cinza">Quem pode participar da promoção?</h3><br>
			<span style="line-height: 30px;" >
				Qualquer pessoa física, residente e domiciliada no Brasil e portadora de CPF/MP poderá participar desta promoção.  
			</span>
			<br><br><br><br>
			<h3 class="basenine cinza">Quem não pode participar?</h3><br>
			<span style="line-height: 30px;" >
				Excluem-se de participação na presente promoção as pessoas jurídicas, os acionistas, diretores, empregados, representantes comerciais (e seus sócios) das Lojas Belian Moda Ltda., da Adcard - Administradora de Cartões de Crédito Ltda., da Bluebox Design e Comunicação Ltda e do escritório de advocacia M. Godoy Consultoria Jurídica em Comunicação Publicitária, sendo a identificação de tais condições efetuada, no momento da apuração, por meio de listagem de RH. 
			</span>
			<br><br><br><br>
			<h3 class="basenine cinza">Qual a premiação da promoção?</h3><br>
			<span style="line-height: 30px;" >
				Sorteios Periódicos: 30 (trinta) prêmios, à escolha do ganhador, dentre as opções: 01 (uma) motocicleta, 0 km, da marca Bull Motors, Modelo KRC 50 LX, 2015/2015,gasolina, no valor de R$ 5.500,00 (cinco mil e quinhentos reais) ou 01 (um) cartão presente, emitido por instituição financeira ou administradora de cartão idônea, com autorização de funcionamento no Brasil, sem função saque, para ser usado em qualquer estabelecimento comercial credenciado à bandeira do emissor, com crédito de R$ 5.500,00 (cinco mil e quinhentos reais). 
			</span><br /><br />
            <span style="line-height: 30px;" >
                Sorteio Final (Série Especial): 01 (um) prêmio, à escolha do ganhador, dentre as opções: 01 (um) automóvel, 0 km, da marca Jeep, modelo Renegade Custom, modelo 2018, 05 (cinco) portas, flex, no valor de R$ 76.000,00 (setenta e seis mil reais) ou 01 (um) cartão presente, emitido por instituição financeira ou administradora de cartão idônea, com autorização de funcionamento no Brasil, sem função saque, para ser usado em qualquer estabelecimento comercial credenciado à bandeira do emissor, com crédito de R$ 76.000,00 (setenta e seis mil reais).
            </span>
			<br><br><br><br>
			<h3 class="basenine cinza">Como posso participar?</h3><br>
			<span style="line-height: 30px;" >
				Para participar, basta efetuar compras de, no mínimo, R$200,00 (duzentos reais) em qualquer loja Besni durante o período de participação da promoção e efetuar seu cadastro no hotsite da promoção no endereço <a href="http://www.promocaobesni.com.br" target="_blank">www.promocaobesni.com.br</a>.  
			</span>
			
            <br><br><br><br>
			<h3 class="basenine cinza">Quais são as informações necessárias para o cadastro na promoção?</h3><br>
			<span style="line-height: 30px;" >
				O consumidor deve informar, obrigatoriamente, os seguintes dados pessoais e da compra: nome completo, data de nascimento, RG, CPF, endereço completo (rua, número, bairro, CEP, cidade, estado), telefone fixo (opcional), telefone celular, e-mail, senha para logar no site da promoção, número e valor do cupom fiscal e data da compra. 
			</span><br /><br />
			<span style="line-height: 30px;" >Caso o participante tenha efetuado suas compras com cartão Besni, deverá informar, ainda, o número do cartão Besni usado para o pagamento da compra, para concessão do benefício previsto no regulamento da promoção. </span>
			
            <br><br><br><br>
			<h3 class="basenine cinza">Posso editar ou atualizar os meus dados pessoais do cadastro realizado no site da promoção?</h3><br>
			<span style="line-height: 30px;" >
				Não todos. Após a confirmação do cadastro, NÃO será possível alterar as seguintes informações: nome completo, sexo, data de nascimento e número do CPF/MF. É de total responsabilidade do participante a veracidade dos dados cadastrais. Fique atento na hora de preencher o cadastro!  
			</span>
			
            <br><br><br><br>
			<h3 class="basenine cinza">Como cadastrar minhas notas?</h3><br>
			<span style="line-height: 30px;" >
				Os participantes que efetuarem a compra no valor acima de R$200,00 (duzentos reais), mediante a emissão de nota fiscal eletrônica, deverão inserir, nos campos “COO” e “ECF”, o número da nota fiscal. Já os participantes que adquirirem produtos mediante a emissão de cupom fiscal eletrônico – SAT, deverão informar no campo “COO” o número do extrato e no campo “ECF” o número do SAT. 
			</span>
			
            <br><br><br><br>
			<h3 class="basenine cinza">Posso cadastrar mais de uma vez a mesma nota ou cupom fiscal?</h3><br>
			<span style="line-height: 30px;" >
				Não. Cada nota ou cupom fiscal que o consumidor possuir permite apenas um único cadastro para participação nesta promoção. 
			</span>
			
            <br><br><br><br>
			<h3 class="basenine cinza">Não estou conseguindo cadastrar o cupom fiscal e/ou não está gerando número da sorte</h3><br>
			<span style="line-height: 30px;" >
				Verifique se o número do cupom fiscal está correto, se preencheu todos os campos dos dados pessoais obrigatórios e sua conexão de internet. Caso o problema persista, entre em contato através do <a href="fale-conosco.aspx" title="Fale Conosco">FALE CONOSCO</a>.  
			</span>
			
            <br><br><br><br>
			<h3 class="basenine cinza">Quando receberei o(s) número(s) da sorte?</h3><br>
			<span style="line-height: 30px;" >
				Os números da sorte da série especial, bem como os de cada período serão enviados ao participante por meio de e-mail, no prazo de 24h (vinte e quatro horas), contados do registro da compra no hotsite da promoção, e poderão ser consultados no site da promoção, bastando informar o login (CPF) e a senha criada no momento do cadastramento (primeiro acesso) no site da promoção. 
			</span>
			
            <br><br><br><br>
			<h3 class="basenine cinza">Quantos números da sorte posso receber?</h3><br>
			<span style="line-height: 30px;" >
				Cada cupom fiscal cadastrado, referente a compras de valor mínimo de R$200,00 (duzentos reais) dará ao participante o direito a 01 (um) número da sorte para concorrer na apuração correspondente à data do registro e 01 (um) número da sorte da série especial, para concorrer no sorteio final da promoção. No caso de compras registradas após o dia 22/12/2017, o participante receberá apenas o número da sorte referente ao último sorteio.  
			</span><br /><br />
			<span style="line-height: 30px;" >
				Caso o pagamento da compra efetuada seja registrado com cartão de crédito Besni, serão atribuídos números da sorte em dobro ao participante.  
			</span>

            <br><br><br><br>
			<h3 class="basenine cinza">Como faço para consultar meu(s) número(s) da sorte?</h3><br>
			<span style="line-height: 30px;" >
				Para consultar os números da sorte, com os quais estará concorrendo aos prêmios, o participante deverá acessar o site da promoção <a href="http://www.promocaobesni.com.br" target="_blank">www.promocaobesni.com.br</a> com os dados de login e senha previamente cadastrados. 
			</span>
			
            <br><br><br><br>
			<h3 class="basenine cinza">Como será realizado o sorteio?</h3><br>
			<span style="line-height: 30px;" >
				O sorteio ocorrerá vinculado à extração da Loteria Federal, de acordo com a data, série e período de participação. 
			</span>
			
            <br><br><br><br>
			<h3 class="basenine cinza">Como os ganhadores serão notificados?</h3><br>
			<span style="line-height: 30px;" >
				Os ganhadores contemplados, titulares do número de ordem de cada uma das séries, serão localizados por meio dos dados informados no cadastro e serão comunicados sobre a sua contemplação no prazo de 07 (sete) dias úteis, contados da data de sua identificação. 
			</span>
			
            <br><br><br><br>
			<h3 class="basenine cinza">Como os prêmios serão entregues?</h3><br>
			<span style="line-height: 30px;" >
				Os prêmios serão entregues aos ganhadores, livres de quaisquer ônus, em até 30 (trinta) dias da data da respectiva apuração, no endereço de residência dos ganhadores (conforme dados informados no cadastro). O ganhador do sorteio final deverá, no momento da entrega do seu prêmio, estar munido dos documentos pessoais (CPF e RG) e ainda, assinar o respectivo Termo de Quitação e Entrega de Prêmio. 
			</span>
			
            <br><br><br><br>
			<h3 class="basenine cinza">Preciso guardar todas as notas ou cupons fiscais cadastrados nesta promoção?</h3><br>
			<span style="line-height: 30px;" >
				Sim. O participante deverá guardar as Notas Fiscais cadastradas na promoção, a fim de validar as informações cadastradas.  
			</span>
           			
            <br><br><br><br>
			<h3 class="basenine cinza">Esqueci/perdi minha senha, como faço para recuperar?</h3><br>
			<span style="line-height: 30px;" >
				Acesse <a href="http://www.promocaobesni.com.br/login.aspx" target="_blank" title="Site Promoção Besni">www.promocaobesni.com.br/login.aspx</a>  e clique em “esqueci minha senha”. Preencha o número do seu CPF e clique no botão "Enviar". Após isto, você receberá um email para redefinir sua senha.
			</span>
            			
            <br><br><br><br>
			<h3 class="basenine cinza">Posso editar ou atualizar o cadastro do cupom fiscal realizado no site da promoção?</h3><br>
			<span style="line-height: 30px;" >
				Não. Ao realizar o cadastro, você deve verificar cuidadosamente os dados e só clicar em “Enviar” quando tiver certeza que as informações estão preenchidas corretamente.  
			</span>
                        			
            <br><br><br><br>
			<h3 class="basenine cinza">Posso fazer o cadastro sem o cupom fiscal?</h3><br>
			<span style="line-height: 30px;" >
				Não. O cadastro do cupom fiscal é necessário para validar e confirmar a participação na promoção.  
			</span>
                        			
            <br><br><br><br>
			<h3 class="basenine cinza">Não tenho como enviar a foto do cupom fiscal, e agora?</h3><br>
			<span style="line-height: 30px;" >
				O envio da foto do cupom fiscal é necessário para garantir a autenticidade da sua participação. Para realizar o envio, tire uma foto do seu cupom fiscal, sem cortar nenhuma informação. A imagem precisa estar nos formatos .png, .jpeg ou .pdf, com o tamanho máximo de 3MB.
			</span>

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