// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require_tree .


function testfunc(id_num) {
   console.log(id_num);
   var target_id = id_num - 49;
   document.getElementById(target_id).scrollIntoView(true);
   return false;
};

var prevScrollpos = window.pageYOffset+128;
window.onscroll = function() {
  var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.getElementById("show-navbar").style.top = "0";
  } else {
    document.getElementById("show-navbar").style.top = "-96px";
  }
  console.log(window.pageYOffset);
  prevScrollpos = currentScrollPos;
}
