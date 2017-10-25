jQuery(document).ready(function () {
	var alturaEscrita = jQuery("#banner-escrita img").height();
	jQuery("#banner-escrita img").attr("style", "margin-top:-"+alturaEscrita/2+"px");
	jQuery(".banner img").fadeIn(1000);
})