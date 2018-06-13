$( document ).on('turbolinks:load', function() {
  var w = $('.card-img').width();
  var h = w/1.62;
  $('.img-bg').height(h);
})


$(window).on('resize', function() {
  var w = $('.card-img').width();
  var h = w/1.64;
  $('.img-bg').height(h);
})


	