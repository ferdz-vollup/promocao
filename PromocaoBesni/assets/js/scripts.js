jQuery(document).ready(function ($) {

    // Recuperação de Senha (COMEÇO)

    $(".novaSenhaClick").click(function () {
        var senha1 = $("input[name=senha]").val();
        var senha2 = $("input[name=senha2]").val();
        if (senha1 == senha2) {

            alert("Senha nova salva com sucesso!");
        } else {
            alert("Erro: você precisa confirmar a nova senha nos dois campos.");
        }
    });


    // Recuperação de Senha (FIM)

    var alturaEscrita = jQuery("#banner-escrita img").height();
    jQuery("#banner-escrita img").attr("style", "margin-top:-" + alturaEscrita / 2 + "px");
    jQuery(".banner img").fadeIn(1000);

    var SPMaskBehavior = function (val) {
        return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
    },
    spOptions = {
        onKeyPress: function (val, e, field, options) {
            field.mask(SPMaskBehavior.apply({}, arguments), options);
        }
    };
    $('.telefone').mask(SPMaskBehavior, spOptions);

    jQuery('.cpf').mask("999.999.999-99");
    jQuery('.rg').mask("AA.AAA.AAA-A");
    jQuery('.data-nasc').mask("99/99/9999");
    jQuery('.cel').mask("(99) 99999-9999"); 
    jQuery('.cep').mask("99999-999");
    jQuery('.cnpj').mask("00.000.000/0000-00");
    jQuery('.valor-nota').mask("#.##0,00", { reverse: true });

    jQuery(".btn-limpar").click(function () {
        var formulario = jQuery(this).parent().parent().parent();
        formulario[0].reset();
    });
    
    jQuery(".btn-enviar").click(function () {
        if ($("input[name='senha']").val() != $("input[name='senha2']").val()) {
            $("input[name='senha2']").addClass("error");
            console.log("Confirmação de senha não corresponde à digitada.");
            return;
        }
        if ($("input[name='email']").val() != $("input[name='email2']").val()) {
            $("input[name='email2']").addClass("error");
            $('html, body').animate({
                scrollTop: $("#formCadastrar").offset().top - 180
            }, 1000);
            console.log("Confirmação de email não corresponde ao digitado.");
            return;
        } 


        // Campos Obrigatórios

        var idForm = "#" + jQuery(this).data("form");
        var inputs = jQuery(idForm).find(".inputs:not(.no-obg)");
        for (i = 0; i < inputs.length; i++) {
            if (inputs[i].value == "") {
                jQuery(inputs[i]).addClass("error");
                
                $('html, body').animate({ 
                    scrollTop: $(inputs[i]).offset().top-180
                }, 1000);

                console.log("erro de campos com o valor vazio, campo: " + inputs[i].name);
                return;
            }
            else {
                jQuery(inputs).removeClass("error");
            }
        }
        if (jQuery("#termos").length > 0) {
            if (jQuery("#termos").is(':checked')) {
                jQuery("#termos").removeClass("error");
            } else {
                alert("Você deve aceitar nossas condições da campanha");
                jQuery("#termos").addClass("error");
            }
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

    // Check if Disclaimer is checked (not working)
    jQuery(".btn-form").click(function () {
        
    });

    jQuery("input[type='email']").on("blur", function () {
        var eml = jQuery(this).val();
        console.log(eml);
        var filtroregexemail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
        console.log(filtroregexemail.test(eml));
        if (filtroregexemail.test(eml) == true) {
            jQuery(this).removeClass("error");
            console.log("no err");
        } else {
            jQuery(this).addClass("error");
            console.log("err");
        }
    });

    jQuery(".sorteios .botao").click(function () {
        if (jQuery(window).width() < 768) {
            jQuery(this).parent().addClass("ativo");
        }
        else {
            jQuery(".sorteios").addClass("ativo");
        }
    });


    // Exibir campos para cartão Besni

    
    $(".card-hide").click(function () {
        $(".cardBesni input").val("");
        $(".cardBesni input").addClass("no-obg");
        $(".cardBesni").hide();
        alert("teste nao");
    });
    $(".card-show").click(function () {
        $(".cardBesni").show();
    });


    // Validação de valor mínimo do Cupom

    jQuery("input[type='submit']").click(function () {
        var valCupom = jQuery("#valor_nota").val();

        alert(jQuery("#valor_nota").val());
        return false;

        if (valCupom >= 200.00) {
            jQuery(this).removeClass("error");
            console.log("no err");
        } else {
            jQuery(this).addClass("error");
            console.log("err");
        }
    });

    jQuery(".numero-cartao .inputs").keyup(function () {
        var digitados = jQuery(this).val().length;
        jQuery(this).attr("maxlength", "4");       
        var maxLenght = jQuery(this).attr("maxlength");
        if (digitados == maxLenght) {
            jQuery(this).addClass("esse");
            jQuery(".esse").parent("div").next("div").children("input").focus();
            jQuery(".esse").removeClass("esse");
        }
    });

    jQuery(".metodo-compras button").click(function () {
        jQuery(".metodo-compras").addClass("fechado");
        jQuery(".metodo-compras").fadeOut(100);
        jQuery("#formCadastro").addClass("aberto");
        if (jQuery(this).data("cartao") == "Sim") {
            jQuery("#sim").attr("checked","checked");
            jQuery(".cartao").fadeIn(100);
        } else {
            jQuery("#nao").attr("checked", "checked");
        }
    })
})








function enviaFerdz(idForm) {
    if (document.querySelectorAll(idForm + " .error").length == 0) {
        var form = jQuery(idForm).serialize();
        jQuery.ajax({
            type: "GET",
            url: "http://www.misasi.com.br/form/flagform.asp",
            async: true,
            data: form,
            crossorigin: true,
            success: function (data) {
                if (data == "sucesso") {
                    console.log("sucesso total");
                    jQuery(idForm+" .retorno-mensagem").html("Obrigado por entrar em contato! Em breve daremos um retorno");
                } else {
                    console.log("sucesso, porém erro");
                    jQuery(idForm+" .retorno-mensagem").html("Ops... Erro ao tentar enviar, por favor, tente novamente!");
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                console.log("erro total");
                jQuery(idForm + " .retorno-mensagem").html("Ops... Erro ao tentar enviar, por favor, tente novamente!");
            },
            beforeSend: function () {
                jQuery(".retorno-mensagem").html("<span class='loader'></span>Enviando mensagem...");
                jQuery(idForm+" button").attr("disabled", "disabled");
            },
            complete: function () {
                console.log("request completo");
                setTimeout(function () {
                    jQuery(idForm + " button").removeAttr("disabled");
                    jQuery(idForm + " .retorno-mensagem").html("");
                    jQuery(idForm)[0].reset();
                }, 6000);

            }
        });
    } else {
        alert("Preencha todos os campos corretamente.");
    }
}

/* MAPA */
var map;
var infowindow;
var request;
var localizacao;

function initMap() {
    localizacao = { lat: -23.5558717, lng: -46.6993749 };

    map = new google.maps.Map(document.getElementById('map'), {
        center: localizacao,
        zoom: 15
    });

    infowindow = new google.maps.InfoWindow();
}

function callback(results, status) {
    if (status == google.maps.places.PlacesServiceStatus.OK) {
        for (var i = 0; i < results.length; i++) {
            var place = results[i];
            createMarker(results[i]);
            map.setCenter(results[0].geometry.location);
        }
    }
}

function createMarker(place) {
    var placeLoc = place.geometry.location;
    var marker = new google.maps.Marker({
        map: map,
        icon: 'http://www.vollup.com/images/marker-besni2.png',
        position: place.geometry.location
    });

    google.maps.event.addListener(marker, 'click', function () {
        infowindow.setContent("<center>Loja Besni<br>" + place.formatted_address + "</center>");
        infowindow.open(map, this);
    });
}

function chama() {
    var cep = jQuery(".cep").val();
    var geocoder = new google.maps.Geocoder();
    var address = 'Loja besni ' + cep;
    geocoder.geocode({ 'address': address }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            map.setZoom(18);
            map.setCenter(results[0].geometry.location);
            createMarker(results[0]);
        } else {
            alert("Geocode was not successful for the following reason: " + status);
        }
    });
}
