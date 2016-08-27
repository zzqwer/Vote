// JavaScript Document
$(document).ready(function(){
  $("#nearact li:not(:first)").css("display","none");
  var B=$("#nearact li:last");
  var C=$("#nearact li:first");
  setInterval(function(){
  if(B.is(":visible")){
  C.fadeIn(500).addClass("in");B.hide()
  }else{
  $("#nearact li:visible").addClass("in");
  $("#nearact li.in").next().fadeIn(500);
  $("li.in").hide().removeClass("in")}
  },3000) //每3秒钟切换一条，你可以根据需要更改
  })