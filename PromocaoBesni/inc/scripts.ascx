<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="scripts.ascx.cs" Inherits="PromocaoBesni.inc.scripts" %>
<script src="/assets/js/jquery-3.2.1.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/js/mascara.js"></script>
<script src="/assets/js/scripts.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB4RP7SVdGPCqfQImhhIY3F4NdzRUbk7pw&libraries=places&callback=initMap" async defer></script>
<script type="text/javascript">
        //AJAX
        function ajaxInit() {
            var req;
            try {
                req = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {
                try {
                    req = new ActiveXObject("Msxml2.XMLHTTP");
                } catch (ex) {
                    try {
                        req = new XMLHttpRequest();
                    } catch (exc) {
                        alert("Esse browser não tem recursos para uso do Ajax");
                        req = null;
                    }
                }
            }
            return req;
    }
</script>