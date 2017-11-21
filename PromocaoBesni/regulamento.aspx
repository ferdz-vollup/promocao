<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regulamento.aspx.cs" Inherits="PromocaoBesni.regulamento" %>

<%@ Register Src="~/inc/head.ascx" TagPrefix="besni" TagName="head" %>
<%@ Register Src="~/inc/menu.ascx" TagPrefix="besni" TagName="menu" %>
<%@ Register Src="~/inc/footer.ascx" TagPrefix="besni" TagName="footer" %>
<%@ Register Src="~/inc/scripts.ascx" TagPrefix="besni" TagName="scripts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!--head-->
<head>

    <besni:head runat="server" ID="head" />
    
    <title>Regulamento</title>
     
    <style type="text/css">
            table.regulamento {
                border-spacing: 10px;

            }
            section#regulamento {
                padding-top: 150px;
            }

            section#regulamento > .container h4.underline-azul {
                padding-bottom: 50px;
            }

            .regulamento tr td.rule-number, .regulamento tr td.rule-sub-number  {
                text-align: right;
                width:4%;
                font-weight: 800px!important;
            }
            td.rule-sub-number  {
                padding-right:10px;
            }

            td.rule-content {
                text-align: left;
                width: 70%;
                padding-right: 20px;
            }

            .underline {
                text-decoration: underline;
            }
            .upper {
                text-transform: uppercase;
            }

            .regulamento tr {
                vertical-align: top;
                height: 20px;
            }
        
            div.tabela table {
                text-align: center;
            }
        
            div.tabela table th:nth-child(2) {
                width: 450px;
            }

            div.tabela table th {
                background: #ccc;

            }
        
            div.tabela table td, table.tabela th {
                border: 1px solid #ccc;
                border-left: none;
                border-bottom: none;
                padding: 5px auto;
            }
        
            div.tabela table th {
                font-weight: 700;
                width: 150px;
                text-align: center;
                border: 2px solid #ccc;
            }

            div.tabela table tr:last-child td {
                border-bottom: 1px solid #ccc;
            }

            div.tabela table tr > td:first-of-type {
                border-left: 1px solid #ccc;
            }
            
            img.diclaimer-arrow-1, img.diclaimer-arrow-3 {
                position: absolute;
                margin-left: -10px;
            }

            img.diclaimer-arrow-2, img.diclaimer-arrow-4 {
                position: absolute;
                margin-left: 5px;
            }

            .hideSpace-mobileView {
                display: none;
            }

            @media only screen and (min-width: 768px) {
                .hideSpace-mobileView {
                    display: table-row;
                }

                #regulamento > .container > .text-center {
                    margin-top: 50px;
                }
            }




    </style>
    
</head>   
    
    <body>
        <!--menu-->
        <besni:menu runat="server" ID="menu" />

        <!--banner-->
        <section id="banner-premios">
            <div class="banner">
                <div id="imagem-carro">
                    <img src="/assets/imagens/imagem-carro.png" alt="">

                </div>
            </div>
        </section>

        <!--CONTAINER-->
        <section id="regulamento">
	        <div class="container">
		        <div class="text-center">

			        <h4 class="basenine text-uppercase azul-claro underline-azul">regulamento</h4>	

			        <h2 class="basenine text-uppercase vermelho">promoção "feche o ano com estilo"</h2><br>

                    <p><strong>LOJAS BELIAN MODA LTDA.</strong></p>
                    <p>Praça Ramos de Azevedo, 206, 27º andar, cj 2730</p>
                    <p>CEP 01037-910 - Centro - São Paulo/SP</p>
                    <p>CNPJ/MF nº 46.469.748/0001-39</p>
                    <br /><br />

                    <p><strong>ADCARD - ADMINISTRADORA DE CARTOES DE CREDITO LTDA.</strong></p>
                    <p>Rua 24 de Maio, 195, 4º andar, sala 02</p>
                    <p>CEP 01041-001 – Republica - São Paulo/SP</p>
                    <p>CNPJ/MF nº 01.899.322/0001-87</p>

		        </div>

                <table class="regulamento">
                    <tr>
                        <td class="rule-number"><strong>1.</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content"><strong>DESCRIÇÃO DO PROCESSO DE PARTICIPAÇÃO</strong></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.1</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Qualquer pessoa física, residente e domiciliada no Brasil e portadora de CPF/MF válido na base da Receita Federal, poderá participar desta promoção, realizada pelas <strong>LOJAS BELIAN MODA LTDA.</strong>, inscrita no CNPJ/MF sob o nº 46.469.748/0001-39, e parceria com a <strong>ADCARD - ADMINISTRADORA DE CARTOES DE CREDITO LTDA.</strong>, inscrita no CNPJ/MF sob o nº 01.899.322/0001-87, no período de participação de 26/11/17 a 31/12/17.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.2</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Para participar, basta efetuar compras de, no mínimo, R$ 200,00 (duzentos reais) em qualquer loja Besni durante o período de participação da promoção e efetuar seu cadastro no hotsite da promoção, no endereço www.promocaobesni.com.br.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>1.2.1</strong></td>
                        <td class="rule-content">Esta promoção será composta por 03 (três) períodos de participação, com sorteios individualizados, além de um sorteio geral final. Os participantes que registrarem suas compras concorrerão sempre no sorteio respectivo ao período de registro das suas compras, além do sorteio final (observado o disposto no item 1.2.2 abaixo).</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>1.2.2</strong></td>
                        <td class="rule-content">Cada cupom fiscal cadastrado, referente a compras de valor mínimo de R$ 200,00 (duzentos reais) dará ao participante o direito a 01 (um) número da sorte, para concorrer na apuração correspondente à data do registro e 01 (um) número da sorte da série especial, para concorrer no sorteio final da promoção. No caso de compras registradas após o dia 22/12/2017, o participante receberá apenas o número da sorte referente ao último sorteio.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>1.2.3</strong></td>
                        <td class="rule-content">As compras poderão ser cadastradas, a partir do início desta promoção, em 26/11/2017, em qualquer período, observando-se o quanto disposto no item supra.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>1.2.4</strong></td>
                        <td class="rule-content">Caso o pagamento da compra efetuada seja registrado com cartão de crédito Besni, serão atribuídos números da sorte em dobro ao participante. Assim, exemplificativamente, uma compra de R$ 500,00 (quinhentos reais), registrada no dia 30/11/17, garantirá ao participante 01 (um) número da sorte para concorrer aos prêmios do sorteio do dia 09/12/17 e 01 (um) número da sorte para concorrer aos prêmios do sorteio final da promoção. Caso esta compra tenha sido paga com cartão de crédito Besni, ao participante serão atribuídos 02 (dois) números da sorte para concorrer aos prêmios do sorteio do dia 09/12/17 e 02 (dois) números da sorte para concorrer aos prêmios do sorteio final da promoção.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>1.2.5</strong></td>
                        <td class="rule-content">Não será permitida a soma de valores constantes em cupons fiscais distintos, com o objetivo de se alcançar o valor de R$ 200,00 (duzentos reais), previsto neste Regulamento. Da mesma forma, somente serão considerados os múltiplos de R$ 200,00 (duzentos reais), para fins de atribuição de números da sorte, se constantes no mesmo cupom fiscal, sempre se desprezado o saldo eventualmente existente.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.3</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Conforme previsto acima, após efetuar sua compra, nos termos previstos neste Regulamento, o consumidor participante deverá acessar o hotsite www.promocaobesni.com.br para efetuar seu cadastro, devendo informar, nesta oportunidade, obrigatoriamente, os seguintes dados pessoais e da compra: nome completo, data de nascimento, RG, CPF, endereço completo (rua, número, bairro, CEP, cidade, estado), telefone fixo (opcional), telefone celular, e-mail, senha para logar no site da promoção, número e valor do cupom fiscal e data da compra. Caso o participante tenha efetuado suas compras com cartão Besni, deverá informar, ainda, o número do cartão Besni usado para o pagamento da compra, para concessão do benefício previsto neste regulamento.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>1.3.1</strong></td>
                        <td class="rule-content"><strong><span class="underline">O participante deverá guardar as Notas Fiscais cadastradas na promoção</span></strong>, uma vez que, a fim de validar as informações cadastradas, a <span class="underline">Promotora poderá, a seu critério, solicitar a apresentação da Nota/Cupom Fiscal cadastrado, sendo esta condição para a validação da contemplação e consequente entrega do prêmio</span>, nos termos previstos no art. 46, parágrafo único da Portaria MF 41/08. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.4</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Conforme previsto no item 1.2.1, além do sorteio final (série especial), que acontecerá no dia 03/01/2018, os participantes concorrerão nos sorteios subsequentes ao registro das compras no hotsite, conforme estabelecido na </td>
                    </tr>
                </table>
            </div>
        </section>       
        <section id="regulamento" style="padding-top: 10px;">
            <div class="container">      
                    <div class="tabela">
                     <table style="margin: 0 auto;">
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
                </div>
            </div>
        </section>       
        <section id="regulamento" style="padding-top: 10px;">
            <div class="container">
                        
                <table class="regulamento" cellpadding=5 cellspacing=10>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.5</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">O acesso à Internet é necessário para realização da participação nesta Promoção e sua qualidade pode variar de acordo com a modalidade e tipo de conexão, do aparelho utilizado para acessar a Internet e da disponibilidade momentânea da rede. A Promotora não se responsabiliza por eventual impossibilidade de acesso para participação via Internet, incluindo, não se limitando a um dos motivos acima descritos. Da mesma forma, não se responsabiliza desempenho dos computadores, tablets e smartphones que não contenham a configuração mínima ou versões atuais para acessar o hotsite da promoção.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.6</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">As dúvidas acerca das formas de participação nesta promoção poderão ser esclarecidas por meio do Fale Conosco do site da promoção ou do facebook oficial da Besni. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.7</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Os números da sorte da série especial, bem como os de cada período serão enviados ao participante por meio de e-mail, no prazo de 24h (vinte e quatro horas), contados do registro da compra no hotsite da promoção, e poderão ser consultados no site da promoção, bastando informar o login (CPF) e a senha criada no momento do cadastramento (primeiro acesso) no site da promoção. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.8</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Para o sorteio final, serão utilizadas 100 (cem) séries, todas emitidas na data de início desta promoção, numeradas de 00 a 99, compostas cada uma de 100.000 (cem mil) números, compreendidos de 00.000 a 99.999. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.9</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Para os sorteios periódicos, serão utilizadas 30 (trinta) séries, todas emitidas na data de início desta promoção, numeradas de 100 a 129, compostas cada uma de 100.000 (cem mil) números, compreendidos de 00.000 a 99.999. Em cada um dos 03 (três) períodos desta promoção, serão utilizadas 10 (dez) séries, sendo o total de séries distribuídas da forma a seguir indicada:</td>

                    </tr>
                    
              </table>
            </div>
        </section>       
        <section id="regulamento" style="padding-top: 10px;">
            <div class="container">      
                    <div class="tabela">
                     <table style="margin: 0 auto;">
                        <tr>
                            <th colspan="2" style="width: 300px;">Período de Participação</th>
                            <th style="width: 80px;">Séries Participantes</th>
                            <th>Sorteio</th>
                        </tr>
                        <tr>
                            <td>Geral (sorteio final)</td>
                            <td>de 26/11 a 31/12/17</td>
                            <td>000 a 099</td>
                            <td>03/01/2018</td>
                        </tr>
                        <tr>
                            <td>1º</td>
                            <td>de 26/11 a 08/12/17</td>
                            <td>100 a 109</td>
                            <td>09/12/17</td>
                        </tr>
                        <tr>
                            <td>2º</td>
                            <td>de 09/12/17 a 15/12/17</td>
                            <td>110 a 119</td>
                            <td>16/12/17</td>
                        </tr>
                        <tr>
                            <td>3º</td>
                            <td>de 16/12/17 a 22/12/17</td>
                            <td>120 a 129</td>
                            <td>23/12/17</td>
                        </tr>

                    </table>
                </div>
            </div>
        </section>       
        <section id="regulamento" style="padding-top: 10px;">
            <div class="container">
                <table class="regulamento" cellpadding=5 cellspacing=10>                    
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.10</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Todos os números da sorte serão compostos por 08 (sete) dígitos, sendo os 03 (três) primeiros algarismos correspondentes ao número de série e os 05 (cinco) subsequentes correspondentes ao número de ordem sorteável, que será confrontado com os resultados da extração da Loteria Federal, de acordo com regras previstas neste Regulamento.
                        <br><br>Exemplo de número de sorte para concorrer aos prêmios dos sorteios periódicos:</td></tr>
                </table>
            </div>
        </section>       
        
        <section id="regulamento" style="padding-top: 10px;">
            <div class="container">      
                    <div class="tabela">
                     <table style="margin: 0 auto;">
                        <tr>
                            <th colspan="6" style="width: 300px;">Número da Sorte</th>
                        </tr>     
                        <tr>
                            <th colspan="1" style="width: 300px;">Número da série</th>
                            <th colspan="5" style="width: 80px;">Número de ordem</th>
                        </tr>
                        <tr>
                            <td>015</td>
                            <td>6</td>
                            <td>6</td>
                            <td>2</td>
                            <td>0</td>
                            <td>4</td>
                        </tr>
                    </table>
                </div>
            </div>
        </section>          
                            
        <section id="regulamento" style="padding-top: 10px;">
            <div class="container">
                <table class="regulamento" cellpadding=5 cellspacing=10>                   
                   
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.11</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Os números da sorte das respectivas séries serão distribuídos entre os participantes, no respectivo período, de acordo com a ordem de cadastramento no hotsite da promoção, de forma concomitante, equitativa e aleatoriamente, entre todas as séries utilizadas para o respectivo período da promoção.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>1.12</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Caso as séries sejam integralmente distribuídas antes do término do respectivo período da promoção, a participação será considerada encerrada e, neste caso, o consumidor será informado por meio do hotsite da promoção.  </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>2</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content"><strong>PREMIAÇÃO</strong></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>2.1</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">2.1	Serão distribuídos 31 (trinta e um) prêmios, totalizando R$ 241.000,00 (duzentos e quarenta e um mil reais).</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>2.2</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Nesta promoção, serão distribuídos os seguintes prêmios, conforme as regras previstas no item 3 abaixo:</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>2.2.1</strong></td>
                        <td class="rule-content"><strong>Sorteios Periódicos:</strong> 30 (trinta) prêmios, à escolha do ganhador, dentre as opções: 01 (uma) motocicleta, 0 km, da marca Bull Motors, Modelo KRC 50 LX, 2015/2015,gasolina, no valor de R$ 5.500,00 (cinco mil e quinhentos reais) <strong class="underline">ou</strong> 01 (um) cartão presente, emitido por instituição financeira ou administradora de cartão idônea, com autorização de funcionamento no Brasil, sem função saque, para ser usado em qualquer estabelecimento comercial credenciado à bandeira do emissor, com crédito de R$ 5.500,00 (cinco mil e quinhentos reais);</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>2.2.2</strong></td>
                        <td class="rule-content"><strong>Sorteio Final (Série Especial):</strong> 01 (um) prêmio, à escolha do ganhador, dentre as opções: 01 (um) automóvel, 0 km, da marca Jeep, modelo Renegade Custom, modelo 2018, 05 (cinco) portas, flex, no valor de R$ 76.000,00 (setenta e seis mil reais) <strong class="underline">ou</strong> 01 (um) cartão presente, emitido por instituição financeira ou administradora de cartão idônea, com autorização de funcionamento no Brasil, sem função saque, para ser usado em qualquer estabelecimento comercial credenciado à bandeira do emissor, com crédito de R$ 76.000,00 (setenta e seis mil reais).</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content"><strong>DOS SORTEIOS</strong></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.1</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Haverá 04 (quatro) datas de sorteio para definição dos ganhadores, em correlação com os resultados da extração da Loteria Federal do Brasil dos dias <strong class="underline" >09/12/2017; 16/12/2017, 23/12/2017 e 03/01/2018.</strong> Nas três primeiras datas serão realizados os sorteios periódicos e na última data, será apurado o ganhador da série Especial.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.2</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Para a obtenção dos ganhadores de cada sorteio, primeiramente serão aplicadas as regras para se conhecer a Série que será identificada como vencedora, dentro da qual serão identificados os números da sorte vencedores, nos termos a seguir expostos, totalizando:</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>3.2.1</strong></td>
                        <td class="rule-content">10 (dez) ganhadores em cada sorteio periódico, que serão contemplados, cada um, com o prêmio descrito no item 2.2.1 deste Regulamento;</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>3.2.2</strong></td>
                        <td class="rule-content">01 (um) ganhador no sorteio final, que será contemplado com o prêmio identificado no item 2.2.2 deste Regulamento.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content"><br /><strong class="underline" style="font-style:italic;">Regra de Apuração da série: </strong></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.3</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">A definição da série participante se dará a partir dos prêmios da Extração da Loteria Federal, lidos de cima para baixo, por meio da combinação das dezenas simples do primeiro ao terceiro prêmio.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>3.3.1</strong></td>
                        <td class="rule-content">Caso o número de série encontrado seja superior à maior série da apuração, deverá ser subtraída a quantidade de séries da apuração, do número de série encontrado, tantas vezes quantas forem necessárias, até que o número obtido esteja dentro do intervalo de séries da apuração. Caso o número de série encontrado seja inferior à menor série da apuração, deverá ser adicionada a quantidade de séries da apuração, do número de série encontrado, tantas vezes quantas forem necessárias, até que o número obtido esteja dentro do intervalo de séries da apuração.</td>
                    </tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content"><br /><strong class="underline" style="font-style:italic;">Regra de Apuração do elemento sorteável:</strong></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.4</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">A definição do elemento sorteável se dará a partir dos prêmios da Extração da Loteria Federal, lidos de cima para baixo, por meio da combinação das unidades simples do primeiro ao quinto prêmio.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.5</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">O número da sorte contemplado será composto da série apurada seguida do elemento sorteável apurado.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.6</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">A identificação dos contemplados de cada apuração (sorteio) se dará mediante a busca dos titulares dos números da sorte contemplados, conforme regras acima indicadas.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.7</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Para determinação do primeiro participante contemplado, este deve possuir o “Número da sorte” que coincide exatamente com o “Número da Sorte contemplado” e atender aos critérios de participação. Os demais contemplados serão determinados pelos “Elementos sorteáveis” imediatamente posteriores.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.8</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Um mesmo “Número da Sorte” não pode ser contemplado mais de uma vez na mesma apuração.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.9</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">No caso de não ter sido distribuído o “Número da sorte” apurado ou do seu titular não atender aos critérios de participação, dar-se-á a entrega do(s) prêmio(s), alternadamente, ao “Elemento sorteável” imediatamente superior, dentro da mesma série, ou, na falta deste, ao imediatamente inferior, repetindo-se tal procedimento até que se encontre um “Elemento sorteável” distribuído mais próximo ao apurado com base no resultado da loteria federal. No caso de se alcançar o número sequencial inicial ou final, buscar-se-á apenas os imediatamente superiores e inferiores, respectivamente.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.10</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Caso não tenha sido distribuído nenhum “Elemento sorteável” na série apurada, deve-se repetir o procedimento descrito no parágrafo anterior para todas as séries que compõem a apuração, alternadamente para a série imediatamente superior, ou, na falta desta, para a imediatamente inferior. No caso de se alcançar a série inicial ou final, buscar-se-á apenas as imediatamente superiores e inferiores, respectivamente.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.11</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Caso a Extração da Loteria Federal não venha a ocorrer em qualquer das datas previstas, por qualquer motivo, será considerada para efeitos de apuração do resultado desta promoção, a data da Extração da Loteria Federal subsequente.</td>
                    </tr>
                    <tr></tr>
                                        <tr>
                        <td class="rule-number"><strong>3.12</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Os ganhadores contemplados, titulares do número de ordem de cada uma das séries, encontrados nos termos acima previstos, serão localizados por meio dos dados constantes no cadastro e serão comunicados sobre a sua contemplação no prazo de 07 (sete) dias úteis, contados da data de sua identificação, por meio de telefonema e/ou e-mail e/ou telegrama com AR.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.13</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Após a identificação dos titulares dos números da sorte contemplados, a Promotora apurará a regularidade da Nota Fiscal cadastrada na promoção, para validar a contemplação, observando a regra prevista no item 4.2 deste Regulamento.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>3.14</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Os nomes dos ganhadores serão divulgados no hotsite da promoção, em até 07 (sete) dias úteis, após o respectivo sorteio.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>4</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content"><strong>DA DESCLASSIFICAÇÃO</strong></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>4.1</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Em caso de fraude comprovada ou infração ao presente Regulamento, o participante será excluído automaticamente da promoção.  </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>4.2</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Caso não se verifique a veracidade, correção ou presença das informações exigidas neste Regulamento, o contemplado perderá o direito de participação no sorteio, sendo o número da sorte correspondente considerado como não distribuído e o respectivo prêmio será atribuído a outro participante, seguindo-se os critérios descritos no item 4.8 deste Regulamento.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>4.3</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Serão desclassificadas as pessoas jurídicas; as pessoas que não cumprirem as condições de participação; a participação efetuada por meio da obtenção de benefício/vantagem de forma ilícita, incluindo a obtenção irregular de números da sorte; que utilize mecanismos que criem condições irregulares e/ou desleais ou que atentem contra os objetivos e condições de participação desta promoção, podendo ser exigida a apresentação do comprovante de compras/vendas, nos termos do Parágrafo único do art. 46 da Portaria MF nº 41/08.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>4.4</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Em caso de desclassificação e/ou identificação das pessoas impedidas de participar, após a realização do sorteio, mas anterior à divulgação dos contemplados, será aplicada a regra do item 4.8 para identificação de novo ganhador. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>4.5</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Em caso de desclassificação ou identificação de pessoas impedidas de participar posterior à divulgação, o participante perderá o direito ao prêmio e o respectivo valor será recolhido ao Tesouro Nacional como renda da União Federal, no prazo de 10 (dez) dias contados do término da promoção.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>5</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content"><strong>LOCAL DE COMPROVAÇÃO DE PROPRIEDADE E EXIBIÇÃO DOS PRÊMIOS</strong></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>5.1</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">A comprovação de propriedade do prêmio será feita em até 08 (oito) dias da data de cada apuração, conforme determinação de lei, na sede da Promotora, por meio de Contrato de Compromisso de Compra e Venda.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>5.2</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Imagens ilustrativas dos prêmios poderão ser visualizadas nos materiais de conferidos divulgação desta promoção, nos pontos de venda, bem como no hotsite da promoção. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>6</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content"><strong>LOCAL E PROCEDIMENTOS DE ENTREGA DOS PRÊMIOS</strong></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>6.1</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">No momento da comunicação da contemplação, poderá ser exigida a apresentação do comprovante de compras/vendas, nos termos do Parágrafo único do art. 46 da Portaria MF nº 41/08, sendo esta condição para o recebimento do prêmio.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>6.2</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Caso qualquer dos prêmios tenha sua produção descontinuada ou, ainda, no caso da sua indisponibilidade temporária no mercado, de forma a impossibilitar sua aquisição no prazo de entrega desta promoção, a Promotora entregará um produto similar, de igual ou superior valor.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>6.3</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Os prêmios serão entregues aos ganhadores, livres de quaisquer ônus, em até 30 (trinta) dias da data da respectiva apuração, no endereço de residência dos ganhadores (conforme dados informados no cadastro). O ganhador do sorteio final deverá, no momento da entrega do seu prêmio, estar munido dos documentos pessoais (CPF e RG) e ainda, assinar o respectivo Termo de Quitação e Entrega de Prêmio. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>6.4</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Caso o participante contemplado opte pelo recebimento do automóvel ou da motocicleta (conforme o caso), este será entregue livre de quaisquer ônus, sendo de responsabilidade da Promotora o pagamento do licenciamento, emplacamento e IPVA relativos ao ano de entrega do automóvel/ motocicleta. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>6.5</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">No caso de premiação com cartão, o participante contemplado poderá usar o saldo no prazo de 360 (trezentos e sessenta) dias, contados da data da data do seu recebimento.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>6.6</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">No caso do contemplado vir a falecer antes da entrega do prêmio, os respectivos herdeiros o receberão por si, de acordo com a legislação vigente, desde que exercido tal direito em até 180 (cento e oitenta) dias, e desde que apresentada à devida documentação que os legitime, sob pena do prêmio vir a ser recolhido como renda para a União.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>6.7</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Não sendo encontrado o ganhador, o prazo concedido por lei para reclamar o prêmio é de 180 (cento e oitenta) dias, contados a partir da data da apuração. Caso o contemplado não compareça para retirar o prêmio nesse período, perderá direito ao mesmo, sendo seu valor recolhido, pela Promotora, ao Tesouro Nacional, como renda da União, no prazo de 10 (dez) dias.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>6.8</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">O prêmio é pessoal e intransferível e não poderá ser trocado por dinheiro ou por quaisquer outros produtos.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>6.9</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Conforme a Lei nº 11.196, de 21/11/05, art. 70, inciso 1º, letra b, item 2, a empresa Promotora recolherá 20% de IRRF sobre o valor dos prêmios, até o 3º dia útil subsequente ao decêndio de ocorrência dos fatos geradores, por meio de DARF recolhido na rede bancária, com o código 0916.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>7</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content"><strong>DIVULGAÇÃO DA PROMOÇÃO</strong></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>7.1</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">A divulgação desta promoção será feita por meio de materiais de ponto de venda, e-mail marketing e Internet, incluindo as redes sociais e outros meios que a promotora julgar necessário. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>8</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content"><strong>DISPOSIÇÕES GERAIS</strong></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>8.1</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content"><strong>A distribuição dos prêmios é gratuita, não cabendo nenhum ônus aos contemplados.</strong></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>8.2</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Ficam os participantes cientes, desde já, que não poderão utilizar meios escusos para participar desta promoção e/ou de mecanismos que criem condições de cadastramento irregular, desleais ou que atentem contra os objetivos e condições de participação previstas neste regulamento, situações essas que, quando identificadas, serão consideradas como infração aos termos do presente Regulamento, ensejando o impedimento da participação e/ou o imediato cancelamento da inscrição do participante, sem prejuízo, ainda, das medidas cabíveis e/ou ação de regresso a ser promovida pelas Promotoras em face do infrator.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>8.3</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Considerando as características inerentes ao ambiente da Internet, a Promotora não se responsabiliza por interrupções ou suspensões de conexão ocasionadas por caso fortuito ou de força maior, bem como por cadastros de produtos perdidos, atrasados, incompletos, inválidos, extraviados ou corrompidos, os quais serão desconsiderados, desde que tais acontecimentos não estejam direta ou indiretamente sujeitos ao controle da empresa Promotora.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>8.4</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">A empresa Promotora não será responsável, também, por transmissões de computador que estejam incompletas ou que falhem, bem como por falha técnica de qualquer tipo, incluindo, mas não se limitando, ao mau funcionamento eletrônico de qualquer rede, "hardware" ou "software", a disponibilidade e acesso à Internet ou ao site desta promoção, assim como por qualquer informação incorreta, vírus, falha de programação (bugs) ou violação por terceiros (hackers), falha humana, técnica ou de qualquer outro tipo que possa ocorrer durante o processamento do cadastro na promoção, desde que tais acontecimentos não estejam direta ou indiretamente sujeitos ao controle da empresa Promotora, eximindo-se, por conseguinte, de qualquer responsabilidade proveniente de tais fatos e/ou atos.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>8.5</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Os ganhadores autorizam, desde já, como consequência da conquista dos seus prêmios, a utilização, pela Promotora, de seus nomes, imagens e sons de voz, em qualquer um dos meios escolhidos para divulgação desta campanha, pelo período de 01 (um) ano a partir da data da respectiva apuração, e, assim como os participantes, autorizam a utilização dos endereços eletrônicos, telefones e demais dados informados no ato da inscrição na promoção, com o propósito de formação de cadastro, reforço de mídia publicitária e divulgação do evento em referência, sem nenhum ônus para a Promotora. A Promotora compromete-se, nos termos do que dispõe o artigo 11º da Portaria nº 41/2008 do MF, a não comercializar ou ceder, ainda que a título gratuito, os dados coletados em razão desta promoção. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>8.6</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">As dúvidas e controvérsias oriundas dos consumidores participantes desta promoção serão, preliminarmente, dirimidas por seus respectivos organizadores e, posteriormente, submetidas ao órgão responsável pela autorização. Eventuais reclamações, devidamente fundamentadas, deverão ser dirigidas ao Procon de domicílio do participante.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>8.7</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Excluem-se de participação na presente promoção as pessoas jurídicas, os acionistas, diretores, empregados, representantes comerciais (e seus sócios) das Lojas Belian Moda Ltda., da Adcard - Administradora de Cartões de Crédito Ltda., da Bluebox Design e Comunicação Ltda e do escritório de advocacia M. Godoy Consultoria Jurídica em Comunicação Publicitária, sendo a identificação de tais condições efetuada, no momento da apuração, por meio de listagem de RH. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong></strong></td>
                        <td class="rule-sub-number"><strong>8.7.1</strong></td>
                        <td class="rule-content">As pessoas mencionadas acima, quando identificadas ou que de alguma maneira manipularam, violaram ou fraudaram este Regulamento para participar da promoção não terão direito à premiação. Caso esta identificação seja feita no momento da apuração, será retirado, no ato do sorteio, um novo cupom válido. Se porventura, a Promotora receber uma denúncia posterior à apuração e anterior a entrega do prêmio, indicando que qualquer ganhador se enquadra numa das categorias acima e não poderia ter participado da promoção, após comprovação da denúncia, este perderá imediatamente o direito ao prêmio sendo seu valor recolhido, pela empresa autorizada, ao Tesouro Nacional, como renda da União, no prazo de 10 (dez) dias. Nesta situação, não haverá novo sorteio.</td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>8.8</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">O regulamento completo desta promoção conterá o número do Certificado de Autorização desta promoção e será disponibilizado no hotsite <a href="hhttp://www.promocaobesni.com.br">www.promocaobesni.com.br</a>, sendo que a participação na promoção implica na aceitação total e irrestrita de todos os seus termos e condições. </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td class="rule-number"><strong>8.9</strong></td>
                        <td class="rule-sub-number"><strong></strong></td>
                        <td class="rule-content">Esta promoção está de acordo com a legislação vigente (Lei nº. 5.768/71, regulamentada pelo Decreto nº. 70.951/72 e Portaria/MF nº 41/08) e obteve o Certificado de Autorização da Secretaria de Acompanhamento Econômico do Ministério da Fazenda – SEAE/MF - <strong>Certificado de Autorização SEAE/MF nº. 04.000093/2017.</strong></td>
                    </tr>
                    <tr></tr>
                    
                </table>
	    </div>
    </section>

<!--rodapé-->

    <!--footer-->
    <besni:footer runat="server" ID="footer" />

<!--scripts-->
    <besni:scripts runat="server" ID="scripts" />

</body>
</html>
