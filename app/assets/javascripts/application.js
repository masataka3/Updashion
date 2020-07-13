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
//= require jquery
//= require rails-ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require_tree .


$(document).on('turbolinks:load', function() {
// summernonte
$('[data-provider="summernote"]').each(function(){
  $(this).summernote({
  lang: 'ja-JP',
  height: 250,
  fontNames: ['Helvetica', 'sans-serif', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New'],
  fontNamesIgnoreCheck: ['Helvetica', 'sans-serif', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New'],
    });
  });
  // article__imagepreview
  $('#article_image').on('change', function (e) {
      var reader = new FileReader();
      reader.onload = function (e) {
          $('#preview_image').css('display', 'block')
          $("#preview_image").attr('src', e.target.result);
          $("#item_image img").css('display','none');
      }
      reader.readAsDataURL(e.target.files[0]);
   });
  // user__profile__image
    $('#user_profile_image').on('change', function (e) {
      var reader = new FileReader();
      reader.onload = function (e) {
          $('#preview_image').css('display', 'block')
          $("#preview_image").attr('src', e.target.result);
          $("#profile_image img").css('display','none');
      }
      reader.readAsDataURL(e.target.files[0]);
  });
    var swiper = new Swiper('.swiper-container', {
    loop: true,
    pagination: {
    el: '.swiper-pagination',
    type: 'bullets',
    clickable: true,
  },
    autoplay: {
    delay: 3000,
    disableOnInteraction: true
    },
  });
});


$(function() {
  $('#back a').on('click',function(event){
    $('body, html').animate({
      scrollTop:0
    }, 800);
    event.preventDefault();
  });
});

