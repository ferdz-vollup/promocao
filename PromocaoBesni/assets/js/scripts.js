jQuery(document).ready(function () {
    var alturaEscrita = jQuery("#banner-escrita img").height();
    jQuery("#banner-escrita img").attr("style", "margin-top:-" + alturaEscrita / 2 + "px");
    jQuery(".banner img").fadeIn(1000);

    jQuery('.telefone').mask("(99) 99999-9999");
    jQuery('.cpf').mask("999.999.999-99");

    jQuery(".btn-limpar").click(function () {
        var formulario = jQuery(this).parent().parent().parent();
        formulario[0].reset();
    })

    jQuery(".form").submit(function () {
        var idForm = "#" + jQuery(this).attr("id");
        var inputs = jQuery(this).find(".inputs:not(.no-obg)");
        for (i = 0; i < inputs.length; i++) {
            if (inputs[i].value == "") {
                jQuery(inputs[i]).addClass("error");
                console.log("erro de campos com o valor vazio, campo: " + inputs[i].name);
                return;
            }
            else {
                jQuery(inputs).removeClass("error");
            }
        }
        if (jQuery(this).find(".error").length == 0) {
            envia(idForm);
        }
    });

    jQuery("#email").on("blur", function () {
        var eml = jQuery(this).val();
        console.log(eml);
        var filtroregexemail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
        console.log(filtroregexemail.test(eml));
        if (filtroregexemail.test() == true) {
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

    jQuery(".numero-cartao .inputs").keyup(function () {
        alert("aa");
        if (jQuery(this).value.length == jQuery(this).maxLength) {
            var next = jQuery(this).next('.inputs');
            jQuery(this).next('.inputs').focus();
        }
    });

    jQuery(".metodo-compras button").click(function () {
        jQuery(".metodo-compras").addClass("fechado");
        jQuery(".metodo-compras").fadeOut(100);
        jQuery("#formCadastro").addClass("aberto");
        if (jQuery(this).data("cartao") == "Sim") {
            jQuery(".cartao").fadeIn(100);
        }
    })
})

function envia(idForm) {
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
                    jQuery("#msgContato").html("<h2>Obrigado por entrar em contato! <br/>Em breve daremos um retorno</h2>");
                    jQuery(".btnLogin").fadeOut(0);
                } else {
                    console.log("sucesso, porém erro");
                    jQuery("#msgContato").html("<h2>Ops...<br/>Erro ao tentar enviar, por favor, tente novamente!</h2>");
                    jQuery('html, body').animate({
                        scrollTop: jQuery("#msgContato").first().offset().top - 140
                    }, 500);
                    jQuery("#imgLoader").fadeOut("5000");
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                console.log("erro total");
                jQuery("#msgContato").html("<h2>Ops...<br/>Erro ao tentar enviar, por favor, tente novamente!</h2>");
                jQuery('html, body').animate({
                    scrollTop: jQuery("#msgContato").first().offset().top - 140
                }, 500);
                jQuery("#imgLoader").fadeOut("5000");
            },
            beforeSend: function () {
                jQuery("#msgContato").show();
                jQuery("#msgContato").html("<h2><i class=\"fa fa-spin fa-spinner\"></i> Por favor, aguarde enquanto enviamos a sua mensagem.</h2>");
                jQuery("#form_contato").hide();
                jQuery('html, body').animate({
                    scrollTop: jQuery("#msgContato").first().offset().top - 140
                }, 500);
                jQuery(".btn_form").attr("disabled", "disabled");
            },
            complete: function () {
                console.log("request completo");
                setTimeout(function () {
                    jQuery("#msgContato").hide();
                    jQuery("#form_contato").fadeIn("1500");
                    jQuery("#imgLoader").hide();
                    jQuery(".btn_form").removeAttr("disabled");
                    jQuery("#msgContato").html("<h2><i class=\"fa fa-spin fa-spinner\"></i> Por favor, aguarde enquanto enviamos a sua mensagem.</h2>");
                    jQuery("#form_contato")[0].reset();
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
        infowindow.setContent("<center>" + place.name + "<br>" + place.formatted_address + "</center>");
        infowindow.open(map, this);
    });
}

function chama() {
    var geocoder = new google.maps.Geocoder();
    var address = 'Loja besni 04086-010';
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
