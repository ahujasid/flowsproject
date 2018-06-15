$( document ).on('turbolinks:load', function() {
  var w = $('.card-img').width();
  var h = w/1.62;
  $('.img-bg').height(h);
})


$(window).on('resize', function() {
  var w = $('.card-img').width();
  var h = w/1.62;
  $('.img-bg').height(h);
})


// $('.card-img').each(function () {
//   var $wrapper = $(this);
//   console.log("Hello world!");
//   var img = $wrapper.find('img')[0];

//   var tempImg = new Image();
//   tempImg.src = img.src;
//   tempImg.onload = function () {
//     $wrapper.addClass('loaded');
//     console.log("Hello world!");
//   };
// });

	