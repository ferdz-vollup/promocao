jQuery(document).ready(function () {
    /* INSTAGRAM */
    var token = '2015137874.54da896.6ed77364a00e45358f7dd0e70b3d98a8'
    $.ajax({
        url: 'https://api.instagram.com/v1/tags/besni/media/recent?access_token=' + token,
        dataType: 'jsonp',
        type: 'GET',
        data: {
            access_token: token
        },
        success: function (data) {
            console.log(data);
            for (x in data.data) {
               // alert(data.pagination.next_url);
                addInstagram(data.data[x].link, data.data[x].id, data.data[x].images.standard_resolution.url, data.data[x].images.thumbnail.url, data.data[x].likes.count, data.data[x].link, data.pagination.next_url);
            }
        },
        error: function (data) {
            console.log(data);
        }
    });
    /* FIM INSTAGRAM */
});

function proxima(proximaURL) {
  
    var token = '2015137874.54da896.6ed77364a00e45358f7dd0e70b3d98a8'
    $.ajax({
        url: proximaURL,
        dataType: 'jsonp',
        type: 'GET',
        data: {
            access_token: token
        },
        success: function (data) {
            
            console.log(data);
            for (x in data.data) { 
                addInstagram(data.data[x].link, data.data[x].id, data.data[x].images.standard_resolution.url, data.data[x].images.thumbnail.url, data.data[x].likes.count, data.data[x].link, data.pagination.next_url);
            }
        },
        error: function (data) {
            return false;
            console.log(data);
        }
    });
}

function addInstagram(url, id, imagem, thumb, likes, tags, proximaURL)
{
    ajax2 = ajaxInit();
   // alert("/ajax/acoes.aspx?acao=addInstagram&url=" + url + "&id=" + id + "&imagem=" + imagem + "&thumb=" + thumb + "&likes=" + likes + "&tags=" + tags + "");
    ajax2.open("GET", "/ajax/acoes.aspx?acao=addInstagram&url=" + url + "&id=" + id + "&imagem=" + imagem + "&thumb=" + thumb + "&likes=" + likes + "&tags=" + tags + "&Rand=" + Math.ceil(Math.random() * 100000), true);
    ajax2.setRequestHeader("Content-Type", "charset=iso-8859-1");
    ajax2.onreadystatechange = function () {
        if (ajax2.readyState == 4) {
            if (ajax2.status == 200) {
               // setTimeout(proxima(proximaURL), 15000);
            }
        }
    }
    ajax2.send(null);
}