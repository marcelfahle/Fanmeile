# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  if $("body").hasClass('facebook') is false
    $("body").css("background-color","#000"); 
    $("body").css("background-image","url('/assets/bg.jpg')"); 
    $("body").css("background-position", "center top");
    $("body").css("background-repeat", "no-repeat");
  else
    $("body").css("background-color","#000"); 
    $("body").css("background-image","url('/assets/bg-facebook.jpg')"); 
    $("body").css("background-position", "center top");
    $("body").css("background-repeat", "no-repeat");
