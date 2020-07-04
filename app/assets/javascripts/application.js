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
//= require_tree .
//= require underscore
//= require gmaps/google


handler = Gmaps.build('Google');
handler.buildMap({ provider: { scrollwheel: false }, internal: {id: 'map'}}, function(){
markers = handler.addMarkers([
  {
    "lat": <%= @shop.latitude %>,
    "lng": <%= @shop.longitude %>,
	  "infowindow": '<p><%= @shop.title %></p><p><%= @shop.address %></p><p><%= link_to "Googleマップで見る" ,"https://maps.google.co.jp/maps?q=loc:#{@shop.latitude},#{@shop.longitude}&iwloc=J",target: "_blank" %></p>'
  }
]);
handler.bounds.extendWith(markers);
handler.fitMapToBounds();
handler.getMap().setZoom(17);
});


