// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('turbolinks:load', function() {
    slideanim();
});

$(window).scroll(function () {
    slideanim();
});

function slideanim() {
    $('.slideanim:not(.slide)').each(function () {
        var pos = $(this).offset().top;

        var winTop = $(window).scrollTop(),
            winHeight = window.innerHeight;

        if (pos < winTop + winHeight) {
            $(this).addClass('slide');
        }
    });
}
