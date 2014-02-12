$(function() {

  var cat = $("<img class='cat' src='http://placekitten.com/200/200'/>");
  $("body").append(cat);

  var dog = $("<img class='dog' src='http://media.tumblr.com/tumblr_llv2lrbX241qfvlsy.jpg' />")
  $("body").append(dog);

  var panda = $("<img class='panda' src='http://teacher.scholastic.com/commclub/babypanda_activity1/assets/images/photo_cvr_babypanda_hr.jpg' />")
  $("body").append(panda);

  $("body").on('mousemove', function(event){  
    var msg = "(" + event.pageX + "," + event.pageY + ")";
    $("#coords").text(msg);
    $(".cat").css({"margin-left": event.pageX/4, "margin-top": event.pageY/4}); 
    $(".dog").css({"margin-left": event.pageX/10, "margin-top": event.pageY/10}); 
    $(".panda").css({"margin-left": event.pageX/20, "margin-top": event.pageY/20});
  });

  $("img").on('click', function(){
    $(this).toggleClass("border");
  });
  
});