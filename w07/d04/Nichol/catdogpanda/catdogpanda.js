//Code In Here gets executed once code is ready. This is like window.onload.
$(function() {
  
  var cat = $("<img class='cat' src='http://placekitten.com/200/200' />");
  
  $("body").append(cat);

  var dog = $("<img class='dog' src='http://placedog.com/200/200' />");
  
  // var dog = $("<img>").addClass("dog")
  //                     .attr("src", "http://placedog.com/200/200");
  
  $("body").append(dog);

  var panda = $("<img class='panda' src='http://allipadwallpapers.com/wp-content/uploads/wallpapers/Animals/thumbs/thumbs_Panda.jpg' />");
  $("body").append(panda);


  $("body").mousemove(function(event){

    $("h1").html(event.pageX + " " + event.pageY);

    var newx = event.pageX/20;
    var newy = event.pageY/20;

    var dogx = event.pageX/40;
    var dogy = event.pageY/40;

    var pandax = event.pageX/100;
    var panday = event.pageY/100;

    $(".cat").css({"margin-left": newx, "margin-top": newy});
    $(".dog").css({"margin-left": dogx, "margin-top": dogy});
    $(".panda").css({"margin-left": pandax, "margin-top": panday});

  });

$('img').on('click', function(){
  $(this).toggleClass("border");
});

});