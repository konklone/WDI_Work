$(function() {
  
var cat = $("<img class='cat' src='http://placekitten.com/200/200'/>");
$("body").append(cat);
var dog = $("<img class='dog' src='http://placedog.com/200/200'/>");
$("body").append(dog);
var panda = $("<img class='panda' src='http://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Grosser_Panda.JPG/800px-Grosser_Panda.JPG'/>");
$("body").append(panda);

$("body").on('mousemove', function(event){
  var msg = "(" + event.pageX +", "+event.pageY +")";
  $("#coords").text(msg);
  $(".cat").css({"margin-left": event.pageX/4, "margin-top":event.pageY/4});
  $(".dog").css({"margin-left": event.pageX/10, "margin-top":event.pageY/30});
  $(".panda").css({"margin-left": event.pageX/20, "margin-top":event.pageY/10});
});
$('img').on('click', function(event){
  event.stopPropagation();//keeps it from bubling up
//console.log("hi");
  $(this).toggleClass("border");
  });
$("body").on("click", function(){
  $("body").off("mousemove");
});

});
