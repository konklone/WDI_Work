$(function(){

  var cat = $("<img class='cat' src='http://placekitten.com/200/300'/>");
  $("body").append(cat);

  var dog = $("<img class='dog' src='http://placedog.com/200/200' />");
  $("body").append(dog);

  var panda = $("<img class='panda' src='http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg' />");
  $("body").append(panda);

  $("body").on("mousemove", function( event ) {
    var msg = "("+event.pageX + ", " + +event.pageY + ")";
    $("#coords").text(msg);
    $(".cat").css({"margin-left": event.pageX/2, "margin-top": event.pageY/2});
    $(".dog").css({"margin-left": event.pageX/2, "margin-top": event.pageY/2});
    $(".panda").css({"margin-left": event.pageX/2, "margin-top": event.pageY/2});
   });

  $("img").on("click", function(event){
    event.stopPropagation();
    $(this).toggleClass("border");
    });

  $("body").on("click", function(){
    $("body").off("mousemove");
  });
});