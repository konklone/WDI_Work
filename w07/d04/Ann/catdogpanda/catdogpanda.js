$(function(){

  var cat = $("<img class='cat' src='http://placekitten.com/200/300' />"); 
  $("body").append(cat); 

  var dog = $("<img class='dog' src='http://placedog.com/400/300' />"); 
  $("body").append(dog); 

  var panda = $("<img class='panda' src='http://filmcrithulk.files.wordpress.com/2011/05/panda1.jpg' />"); 
  $("body").append(panda); 

  $("body").on('mousemove', function(event){
    var msg = "(" + event.pageX + "," + event.pageY + ")"; 
    $("#coords").text(msg);  
    $(".cat").css({"margin-left": event.pageX/4, "margin-top": event.pageY/4}); 
    $(".dog").css({"margin-left": event.pageX/10, "margin-top": event.pageY/10}); 
    $(".panda").css({"margin-left": event.pageX/20, "margin-top": event.pageY/20}); 
  }); 

  $("img").on('click', function(event){
    console.log("hi!")
    event.stopPropagation(); 
    $(this).toggleClass("blue-border");
  }); 

  $("body").on('click', function(){
    $("body").off("mousemove");
  })

}); 