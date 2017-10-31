jQuery(document).ready(function () {

    /* INSTAGRAM */
    var token = '2015137874.54da896.6ed77364a00e45358f7dd0e70b3d98a8'
    $.ajax({
        url: 'https://api.instagram.com/v1/tags/xuxa/media/recent?access_token=' + token,
        dataType: 'jsonp',
        type: 'GET',
        data: {
            access_token: token
        },
        success: function (data) {
            console.log(data);
            for (x in data.data) {

                $('#instaFeed').append('<li><a href="' + data.data[x].link + '" target="_blank"><img src="' + data.data[x].images.thumbnail.url + '"/></a></li>');
            }
        },
        error: function (data) {
            console.log(data);
        }
    });
    /* FIM INSTAGRAM */

});