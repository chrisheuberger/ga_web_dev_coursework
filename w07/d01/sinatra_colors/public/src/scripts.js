function showPalette(e) {
    var colors = $(this).data('colors').split(',');
    $('.palette').html('');
    $.each(colors, function(index, color) {
        var colorDiv = $('<div>').css({
            'width': '100px',
            'height': '100px',
            'background-color': '#' + color,
            'display': 'inline-block',
            'margin': '10px'
        });
        $('.palette').append(colorDiv);
    });
}

$(function() {
    $('.color-generator').on('click', function() {
        function errorCallback(data) {
            console.log(data);
        }
        function successCallback(colorPalettes) {
            var palettes = $('.palettes').html('');
            $.each(colorPalettes, function(index, colorPalette) {
                var paletteButton = $('<button>').html(colorPalette.title);
                paletteButton.data('colors', colorPalette.colors.join(','));
                paletteButton.on('click', showPalette);
                palettes.append(paletteButton);
            });
        }
        $.ajax({
            url: '/palettes.json',
            success: successCallback,
            error: errorCallback
        });
    });
});
