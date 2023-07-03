$(document).on('click', '[data-toggle="lightbox"]', function(event) {
                event.preventDefault();
                $(this).ekkoLightbox();
            });

$(document).ready(function() {
  $('.screenshot').magnificPopup({type:'image'});
});

$(document).ready(function() {
  $('.screenshot-right').magnificPopup({type:'image'});
});