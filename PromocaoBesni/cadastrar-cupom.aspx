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

    <style type="text/css">
        .container {
            margin-top: 20px;
        }

        .image-preview-input {
            position: relative;
            overflow: hidden;
            margin: 0px;
            color: #333;
            background-color: #fff;
            border-color: #ccc;
        }

        .image-preview-input input[type=file] {
                position: absolute;
                top: 0;
                right: 0;
                margin: 0;
                padding: 0;
                font-size: 20px;
                cursor: pointer;
                opacity: 0;
                filter: alpha(opacity=0);
        }

        .image-preview-input-title {
            margin-left: 2px;
        }
        .image-preview-filename {
            border-radius: 0px;
            box-shadow: none;
            border: 1px solid black !important;
            width: 77% !important;
        }
        .input-group.image-preview {
            width: 85%;
            display: inline-block;
        }
        .btn.btn-default.image-preview-input {
            background: none;
            border: 0px;
            padding: 0px;
            margin: 0px;
            height: 50px;
            border-radius: 0px;
        }
        span.input-group-btn.buttons-uploads {
            border: 0px;
            width: auto;
            margin-left: 1%;
            margin-top: -4px;
            display: inline-block;
        }
        .btn.btn-default.image-preview-input span, button.btn.btn-default.image-preview-clear span {
            margin: 0px;
            padding: 0px;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-bottom: 4px;
        }
        button.btn.btn-default.image-preview-clear {
            position: absolute;
            background: transparent;
            border: 0px;
            margin: 0px !important;
            padding: 0px;
            top: 0;
            right: 113%;
        }
        button.btn.btn-default.image-preview-clear span {
            margin: 0px;
        }
        button#close-preview {
            margin: 0px;
        }
        .popover-content img {
            height: auto !important;
            width: 100% !important;
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
    <section id="ganhadores">
        <div class="container">
            <div class="text-center">
                <h2 class="basenine text-uppercase vermelho">cadastro</h2>
            </div>
            <div class="row" style="margin-top: 70px">
                <div class="col-xs-12 col-sm-6">
                    <h3 class="basenine text-uppercase cinza" style="text-align: left;">cadastrar cupom</h3>
                    <div style="text-align: left" class="traco-vermelho"></div>
                    <br>
                    <span style="line-height: 30px">Olá, <strong><span runat="server" id="usuario"></span></strong>. Tenha em mãos o cupom fiscal da sua compra realizada em qualquer loja Besni para preencher os campos abaixo. Lembre-se que a compra precisa ser de, no mínimo, R$200. Não nos responsabilizamos por erros de digitação.</span>
                
                <!--
                </div>
                <div class="col-xs-12 col-sm-4">
                    -->
                
                   <%-- <form id="cadastrar-cupom" enctype="multipart/form-data" method="post" action="javascript:GerarCupom($('#cnpj').val(),$('#date').val(),$('#coo').val(),$('#valor_nota_02').val());">--%>
                    <form method="post" id="cadastrarcupom" enctype="multipart/form-data" runat="server">
                        <div class="novo-cupon">
                            <span>1</span>
                            <input type="text" placeholder="CNPJ" id="cnpj" name="cnpj" class="cnpj inputs">
                        </div>
                        <div class="novo-cupon">
                            <span>2</span>
                            <input type="text" placeholder="dd/mm/aaaa" id="date" name="date" class="data-nasc inputs">
                        </div>
                        <div class="novo-cupon">
                            <span>3</span>
                            <input type="text" placeholder="COO" id="coo" name="coo" class="inputs">
                        </div>
                        <div class="novo-cupon">
                            <span>4</span>
                            <!--<label class="lblValorNota">R$</label>-->
                            <input type="text" placeholder="R$ xxx,xx" id="valor_nota_02" name="valor_nota_02" class="valor-nota inputs" onkeypress="return(MascaraMoeda(this,'.',',',event))">
                        </div>
                        <div class="novo-cupon">
                            <span>5</span>
                                <%-- <div class="col-xs-12 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">  --%>
                                <!-- image-preview-filename input [CUT FROM HERE]-->
                                <div class="input-group image-preview">
                                    <input type="text" class="image-preview-filename" disabled="disabled">
                                    <!-- don't give a name === doesn't send on POST/GET -->
                                    <span class="input-group-btn buttons-uploads">
                                        <!-- image-preview-clear button -->
                                        <button type="button" class="btn btn-default image-preview-clear" style="display: none;">
                                            <span class="glyphicon glyphicon-remove"></span>
                   
                                        </button>
                                        <!-- image-preview-input -->
                                        <div class="btn btn-default image-preview-input">
                                            <span class="glyphicon glyphicon-folder-open"></span>
                                            <input type="file" accept="image/png, image/jpeg, image/gif" name="input-file-preview" />
                                            <!-- rename it -->
                                        </div>
                                    </span>
                                </div>
                                <!-- /input-group image-preview [TO HERE]-->
                                <%--</div>--%>
                        </div>

                        <div class="col-sm-3 col-md-4"></div>
                        <div class="col-xs-12 col-sm-9 col-md-6 two-buttons-wrapping">
                             <%--<button type="submit" style="" class="btn-form btn-enviar" data-form="cadastrar-cupom">Enviar</button>--%>
                             <asp:Button ID="pub" runat="server" Text="Enviar" CssClass="btn-form btn-enviar" data-form="cadastrarcupom"  OnClick="pub_Click" />
                            <button style="" type="reset" class="btn-form btn-enviar">Limpar</button>
                        </div>
                    </form>
                </div>
                <div class="col-xs-12 col-sm-6 receipt-wrapping">
                    <div class="col-sm-10" style="margin: auto; float: none">
                        <br>
                        <img src="/assets/imagens/cupom-fiscal-legenda.png" alt="exemplo cupom fiscal" />
                        <p style="text-align: left; font-size: 12px; margin-top: 15px;">
                            * Tire uma foto do seu cupom fiscal, sem cortar nenhuma informação. A imagem precisa estar nos formatos .png, .jpeg ou .pdf, com o tamanho máximo de 3MB. Confira o seu arquivo antes de clicar em ENVIAR.
                        </p>
                        <br>
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

    <script>
        (function (h, o, t, j, a, r) {
            h.hj = h.hj || function () { (h.hj.q = h.hj.q || []).push(arguments) };
            h._hjSettings = { hjid: 670043, hjsv: 6 };
            a = o.getElementsByTagName('head')[0];
            r = o.createElement('script'); r.async = 1;
            r.src = t + h._hjSettings.hjid + j + h._hjSettings.hjsv;
            a.appendChild(r);
        })(window, document, 'https://static.hotjar.com/c/hotjar-', '.js?sv=');
    </script>

    <script type="text/javascript">

        function GerarCupom(cnpj, data, cco, valor) {
            alert("entrou");
           
            valor = valor.replace(".", "").replace(",", "")
            if (valor >= 20000) {
                alert("1");
                jQuery(this).removeClass("error");
                console.log("no err");
            } else {
                alert("2");
                jQuery(this).addClass("error");
                $("#valor_nota").css({ 'color': 'red' });
                $("#valor_nota").val("Apenas valores a partir de R$200,00");
                console.log("err");
                return false;
            }

            //ajax2 = ajaxInit();
            //ajax2.open("GET", "/ajax/acoes.aspx?acao=GerarCupom&cnpj=" + cnpj + "&data=" + data + "&cco=" + cco + "&valor=" + valor, true);
            //ajax2.setRequestHeader("Content-Type", "charset=iso-8859-1");
            //ajax2.onreadystatechange = function () {
            //    if (ajax2.readyState == 4) {
            //        if (ajax2.status == 200) {
            //            var resultado = ajax2.responseText.split("|");
            //           // alert(resultado[1]);
            //            if (resultado[1] >= 2) {
            //                window.location.href = "/novo-cupom.aspx?total=" + resultado[1];
            //            }
            //        }
            //    }
            //}
            //ajax2.send(null);
        }

        $(document).on('click', '#close-preview', function () {
            $('.image-preview').popover('hide');
            // Hover befor close the preview
            $('.image-preview').hover(
                function () {
                    $('.image-preview').popover('show');
                },
                 function () {
                     $('.image-preview').popover('hide');
                 }
            );
        });

        $(function () {
            // Create the close button
            var closebtn = $('<button/>', {
                type: "button",
                text: 'x',
                id: 'close-preview',
                style: 'font-size: initial;',
            });
            closebtn.attr("class", "close pull-right");
            // Set the popover default content
            $('.image-preview').popover({
                trigger: 'manual',
                html: true,
                title: "<strong>Previsão</strong>" + $(closebtn)[0].outerHTML,
                content: "Não há imagem",
                placement: 'bottom'
            });
            // Clear event
            $('.image-preview-clear').click(function () {
                $('.image-preview').attr("data-content", "").popover('hide');
                $('.image-preview-filename').val("");
                $('.image-preview-clear').hide();
                $('.image-preview-input input:file').val("");
                $(".image-preview-input-title").text("Pasta");
            });
            // Create the preview image
            $(".image-preview-input input:file").change(function () {
                var img = $('<img/>', {
                    id: 'dynamic',
                    width: 250,
                    height: 200
                });
                var file = this.files[0];
                var reader = new FileReader();
                
                // Set preview image into the popover data-content
                reader.onload = function (e) {
                    $(".image-preview-input-title").text("Mudar");
                    $(".image-preview-clear").show();
                    $(".image-preview-filename").val(file.name);
                    img.attr('src', e.target.result);
                    $(".image-preview").attr("data-content", $(img)[0].outerHTML).popover("show");
                }
                reader.readAsDataURL(file);
            });
        });

    </script>

</body>
</html>
