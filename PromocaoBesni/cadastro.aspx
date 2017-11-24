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

    <title>Promoção Besni | Cadastre-se</title>
    <meta name="description" content="A cada R$200,00 em compras você ganha 1 número da sorte para participar dos sorteios semanais e 1 número para o sorteio final!"/>
    <!-- facebook -->
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Promoção Besni | Cadastre-se" />
    <meta property="og:description" content="A cada R$200,00 em compras você ganha 1 número da sorte para participar dos sorteios semanais e 1 número para o sorteio final!" />
    <meta property="og:url" content="http://www.promocaobesni.com.br/cadastro.aspx" />
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
    <section id="banner-premios">
        <div class="banner">
            <div id="imagem-carro">
                <img src="assets/imagens/imagem-carro.png" alt="">
            </div>
        </div>
    </section>

    <!--CONTAINER-->
    <section id="ganhadores">
        <div class="container">
            <div class="text-center">
                <h2 id="h2" runat="server" class="basenine text-uppercase vermelho">cadastro</h2>
            </div>

            <div class="row metodo-compras">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <h3 class="basenine">fiz minhas compras
                        <br>
                        com o <span class="vermelho">cartão besni</span>
                    </h3>
                    <div class="traco-vermelho"></div>
                    <div class="row">
                        <div class="col-md-3 col-xs-3 text-center" style="margin-top: 10px;">
                            <img src="assets/imagens/icone-cartao-besni.png" alt="">
                        </div>
                        <div class="col-md-9 col-xs-9">
                            <span class="saiba-concorra">Nas compras com Cartão Besni você dobra seus números da sorte, e tem mais chances de ganhar!
                            </span>
                        </div>
                    </div>
                    <button class="btn-form" data-cartao="Sim">Clique aqui</button>
                </div>
                <div class="col-sm-5">
                    <h3 class="basenine">fiz minhas compras
                        <br>
                        de <span class="vermelho">outras formas</span>
                    </h3>
                    <div class="traco-vermelho"></div>
                    <div class="row">
                        <div class="col-md-3 col-xs-3 text-center" style="margin-top: 10px;">
                            <img src="assets/imagens/icone-compras-acima.png" width="77%" alt="">
                        </div>
                        <div class="col-md-9 col-xs-9">
                            <span class="saiba-concorra">A cada R$200,00 em compras você ganha 1 número da sorte para participar para os sorteios semanais, e 1 número para o sorteio final!
                            </span>
                        </div>
                    </div>
                    <button class="btn-form" data-cartao="Nao">Clique aqui</button>
                </div>
                <div class="col-sm-1"></div>
            </div>

            <div id="formCadastro" style="margin-top: 70px">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="basenine text-uppercase vermelho">Dados pessoais
                        </h4>
                        <br>
                    </div>
                </div>

                <%--<form action="javascript:void(0)" method="post" novalidate enctype="multipart/form-data" id="cadastroForm" class="form">--%>
                <form action="/ajax/acoes.aspx" method="post" class="form" id="formCadastrar">
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
                            <input type="text" name="nome" id="nome" runat="server" class="inputs">
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-6">
                            <div style="width: 50px" class="labelForm">CPF</div>
                            <input type="text" onchange="validarCPF(this.value);" name="cpf" id="cpf" runat="server" class="inputs cpf">
                        </div>
                        <div class="col-sm-6">
                            <div class="labelFormTwo text-center">RG</div>
                            <input type="text" name="rg" id="rg" runat="server" class="inputs rg">
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-6">
                            <div class="labelForm">Data de nascimento</div>
                            <input type="text" name="dtnascimento" id="dtnascimento" runat="server" class="inputs data-nasc">
                        </div>
                        <div class="col-sm-6">
                            <div class="labelFormTwo text-center">Sexo</div>
                            <div class="text-uppercase">
                                <label for="masc" class="labelRadio">
                                    <input type="radio" id="masc" runat="server" name="sexo" class="inputs" value="M"><span>Masculino</span>
                                </label>
                                <label for="fem" class="labelRadio">
                                    <input type="radio" id="fem" runat="server" name="sexo" class="inputs" value="F"><span>Feminino</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-6">
                            <div class="labelForm">Telefone</div>
                            <input type="text" name="telefone" id="telefone" runat="server" class="inputs telefone no-obg">
                        </div>
                        <div class="col-sm-6">
                            <div class="labelFormTwo text-center">Celular</div>
                            <input type="text" name="celular" id="celular" runat="server" class="inputs cel">
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-6">
                            <div class="labelForm">E-mail</div>
                            <input type="email" id="email" runat="server" name="email" class="inputs" style="background-image: none;">
                        </div>
                        <div class="col-sm-6">
                            <div class="labelFormTwo text-center">
                                <span>Confirmar</span> E-mail
                            </div>
                            <input type="email" id="email2"  runat="server" name="email2" class="inputs">
                        </div>
                    </div>

                    <div class="row" style="margin-top: 10px;">
                        <div id="msgErro" class="msgErro" style="margin-left:3px">
                            <p>&nbsp;</p>
                        </div>
                    </div>

                    <div class="row not-flex " style="margin-top: 50px;">
                        <div class="col-sm-5 col-md-3">
                            <div class="labelForm">você tem cartão besni ?</div>
                            <div class="text-uppercase">
                                <label for="sim" class="labelRadio">
                                    <input type="radio" id="sim" name="changeCard" class="inputs card-show" value="Sim"><span>Sim</span>
                                </label>
                                <label for="nao" class="labelRadio">
                                    <input type="radio" id="nao" name="changeCard" class="inputs card-hide" value="Não"><span>Não</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="row not-flex cardBesni cartao" style="margin-top: 50px; display: none">
                        <div class="col-sm-12">
                            <div class="labelFormTwo">número do cartão</div>
                            <div style="margin-left: -5px" class="numero-cartao">
                                <div class="col-md-2 col-xs-3">
                                    <input type="text" name="cartao1" id="cartao1" runat="server" class="inputs" maxlength="4">
                                </div>
                                <div class="col-md-2 col-xs-3">
                                    <input type="text" name="cartao2" id="cartao2" runat="server" class="inputs" maxlength="4">
                                </div>
                                <div class="col-md-2 col-xs-3">
                                    <input type="text" name="cartao3" id="cartao3" runat="server" class="inputs" maxlength="4">
                                </div>
                                <div class="col-md-2 col-xs-3">
                                    <input type="text" name="cartao4" id="cartao4" runat="server" class="inputs" maxlength="4">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 50px;">
                        <div class="col-md-12">
                            <h4 class="basenine text-uppercase vermelho">Endereço
                            </h4>
                            <br>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 10px;">
                        <div class="col-md-8">
                            <div class="labelForm">CEP</div>
                            <input id="cep" type="text" name="cep" runat="server" class="inputs cep" onblur="pesquisacep(this.value)">
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-8">
                            <div class="labelForm">Endereço</div>
                            <input id="logradouro" type="text" runat="server" name="logradouro" class="inputs">
                        </div>
                        <div class="col-sm-4">
                            <div class="labelForm text-center" style="margin-right: 10px;">Número</div>
                            <input type="text" id="numero" runat="server" name="numero" class="inputs">
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-6">
                            <div class="labelForm">Complemento</div>
                            <input type="text" name="complemento" id="complemento" runat="server" class="inputs no-obg">
                        </div>
                        <div class="col-sm-6">
                            <div class="labelFormTwo text-center">Bairro</div>
                            <input id="bairro" type="text" name="bairro" runat="server" class="inputs">
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-6">
                            <div class="labelForm">Cidade</div>
                            <input id="cidade" type="text" name="cidade" runat="server" class="inputs">
                        </div>
                        <div class="col-sm-6">
                            <div class="labelFormTwo text-center">UF</div>
                            <input id="uf" type="text" name="uf" rUNAT="server" class="inputs text-uppercase" maxlength="2">
                        </div>
                    </div>

                    <div class="row" style="margin-top: 50px;">
                        <div class="col-md-12">
                            <h4 class="basenine text-uppercase vermelho">Login
                            </h4>
                            <br>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-6">
                            <div style="width: 50px;" class="labelForm">Senha</div>
                            <input type="password" name="senha" class="inputs">
                        </div>
                        <div class="col-sm-6">
                            <div class="labelFormTwo text-center">
                                <span>Confirmar</span> Senha
                            </div>
                            <input type="password" name="senha2" class="inputs">
                        </div>
                    </div>
                    <div class="row" style="margin-top: 50px;">
                        <div class="col-md-12">
                            <div>
                                <label for="termos" class="checkboxLabel">
                                    <input type="checkbox" id="termos" name="termos" class="inputs termos-obg" value="1"><span>Li e aceito todos as condições do <a href="regulamento.aspx" target="_blank" title="Link para o Regulamento">regulamento da campanha</a>.</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div>
                                <label for="novidades" class="checkboxLabel">
                                    <input type="checkbox" id="novidades" name="novidades" class="inputs no-obg" value="1"><span>Desejo receber novidades e atualizações sobre produtos via e-mail</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="row not-flex" style="margin-top: 50px;">
                        <div class="col-md-12 text-right">
                            <button type="button" class="btn-form btn-limpar" style="margin-right: 10px;">Limpar</button>

                            <input type="button" data-form="formCadastrar" value="Enviar" class="btn-form btn-enviar" />
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

    <script type="text/javascript">

        jQuery(document).ready(function ($) {
            var url = location.href;

            if (url.indexOf("Sim") > 1) {
                jQuery(".metodo-compras button[data-cartao='Sim']").click();
                if ($(window).width() < 600) {
                    scrollTop: $("#formCadastro").offset().top;
                }
            }

            if (url.indexOf("Nao") > 1) {
                jQuery(".metodo-compras button[data-cartao='Nao']").click();
                if ($(window).width() < 600) {
                    scrollTop: $("#formCadastro").offset().top;
                }
            }

        });


        

        function validarCPF(cpf) {

            ajax2 = ajaxInit();
            ajax2.open("GET", "/ajax/acoes.aspx?acao=validarCPF&cpf=" + cpf, true);
            ajax2.setRequestHeader("Content-Type", "charset=iso-8859-1");
            ajax2.onreadystatechange = function () {
                if (ajax2.readyState == 4) {
                    if (ajax2.status == 200) {
                        //  var resultado = ajax2.responseText.split("|");
                        //alert(ajax2.responseText);
                        if (ajax2.responseText > 0) {
                            $('#msgErro').html('<p><strong>Atenção: </strong>Este CPF já está cadastrado em nossa base.</p>');
                            $('#cpf').addClass("inputs cpf error");
                            $('#cpf').focus();
                        }
                        else {
                            $('#msgErro').html('<p>&nbsp;</p>');
                            $('#cpf').removeClass("error");
                            $('#rg').focus();
                        }
                    }
                }
            }
            ajax2.send(null);
        }

        function limpa_formulário_cep() {
            //Limpa valores do formulário de cep.
            document.getElementById('logradouro').value = ("");
            document.getElementById('bairro').value = ("");
            document.getElementById('cidade').value = ("");
            document.getElementById('uf').value = ("");
        }

        function fillByZipcode(conteudo) {
            if (!("erro" in conteudo)) {
                //Atualiza os campos com os valores.
                document.getElementById('logradouro').value = (conteudo.logradouro);
                document.getElementById('bairro').value = (conteudo.bairro);
                document.getElementById('cidade').value = (conteudo.localidade);
                document.getElementById('uf').value = (conteudo.uf);
            } //end if.
            else {
                //CEP não Encontrado.
                limpa_formulário_cep();
                alert("CEP não encontrado.");
            }
        }

        function pesquisacep(valor) {

            //Nova variável "cep" somente com dígitos.
            var cep = valor.replace(/\D/g, '');

            //Verifica se campo cep possui valor informado.
            if (cep != "") {

                //Expressão regular para validar o CEP.
                var validacep = /^[0-9]{8}$/;

                //Valida o formato do CEP.
                if (validacep.test(cep)) {

                    //Preenche os campos com "..." enquanto consulta webservice.
                    document.getElementById('logradouro').value = "...";
                    document.getElementById('bairro').value = "...";
                    document.getElementById('cidade').value = "...";
                    document.getElementById('uf').value = "...";

                    //Cria um elemento javascript.
                    var script = document.createElement('script');

                    //Sincroniza com o callback.
                    script.src = '//viacep.com.br/ws/' + cep + '/json/?callback=fillByZipcode';

                    //Insere script no documento e carrega o conteúdo.
                    document.body.appendChild(script);

                } //end if.
                else {
                    //cep é inválido.
                    limpa_formulário_cep();
                    alert("Formato de CEP inválido.");
                }
            } //end if.
            else {
                //cep sem valor, limpa formulário.
                limpa_formulário_cep();
            }
        };

    </script>

</body>
</html>
