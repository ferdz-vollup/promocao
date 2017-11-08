<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastrar-cupom.aspx.cs" Inherits="PromocaoBesni.cadastrar_cupom" %>
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
			<h2 class="basenine text-uppercase vermelho">cadastro</h2>
		</div>                  
        <div class="row" style="margin-top:70px">
            <div class="col-xs-12">
                <h3 class="basenine text-uppercase cinza" style="text-align: left;">cadastrar cupon</h3>
                <div style="text-align: left" class="traco-vermelho"></div><br>
                <span style="line-height:30px">
                    Olá, <strong><span runat="server" id="usuario"> </span></strong> duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi.<br />
                    accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor.
                </span>
            </div>
            <div class="col-xs-12 col-sm-6">
                <form id="cadastrar-cupom" action="javascript:GerarCupom($('#cnpj').val(),$('#date').val(),$('#coo').val(),$('#valor_nota').val());">
                    <div class="novo-cupon">
                        <span>1</span>
                        <input type="text" placeholder="CNPJ" id="cnpj" name="cnpj" class="cnpj">
                    </div>
                    <div class="novo-cupon">
                        <span>2</span>
                        <input type="text" placeholder="dd/mm/aaaa" id="date" name="date" class="data-nasc">
                    </div>                       
                    <div class="novo-cupon">
                        <span>3</span>
                        <input type="text" placeholder="COO" id="coo" name="coo">
                    </div>
                    <div class="novo-cupon">
                        <span>4</span>
                        <!--<label class="lblValorNota">R$</label>-->
                        <input type="text" placeholder="R$ xxx,xx" id="valor_nota" name="valor nota" class="valor-nota">
                    </div>
                    <div class="col-sm-3 col-md-4"></div>
                    <div class="col-xs-12 col-sm-9 col-md-6 two-buttons-wrapping">
                        <button type="submit" style="" class="btn-form btn-enviar">Enviar</button>  
                        <button style="" type="reset" class="btn-form btn-enviar">Limpar</button>                                                               
                    </div>
                </form>
            </div>
            <div class="col-xs-12 col-sm-6 receipt-wrapping">
                <div class="col-sm-10" style="margin:auto; float:none">
                    <br><img src="/assets/imagens/cupom-fiscal-legenda.png" alt="exemplo cupon fiscal" />
                    <p style="text-align: left; margin-top: 15px;">
                        * Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.
                    </p><br>
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
        function GerarCupom(cnpj, data, cco, valor) {

            valor = valor.replace(".", "").replace(",", "")
            
            if (valor >= 20000) {
                jQuery(this).removeClass("error");
                console.log("no err");
            } else {
                jQuery(this).addClass("error");
                $("#valor_nota").css({ 'color': 'red' });
                $("#valor_nota").val("Apenas valores a partir de R$200,00");
                console.log("err");
                return false;
            }

            ajax2 = ajaxInit();
            ajax2.open("GET", "/ajax/acoes.aspx?acao=GerarCupom&cnpj=" + cnpj + "&data=" + data + "&cco=" + cco + "&valor=" + valor, true);
            ajax2.setRequestHeader("Content-Type", "charset=iso-8859-1");
            ajax2.onreadystatechange = function () {
                if (ajax2.readyState == 4) {
                    if (ajax2.status == 200) {
                        if (ajax2.responseText == "ok") {
                            window.location.href = "/novo-cupom.aspx";
                        }
                        //alert(ajax2.responseText);
                    }
                }
            }
            ajax2.send(null);
        }
    </script>

</body>
</html>