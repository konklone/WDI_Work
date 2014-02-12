$(document).ready(function(){
   var cat_img = $("<img class='cat'>");
   cat_img.attr("src", "http://placekitten.com/500/500");
   $("body").append(cat_img);

   var dog_img = $("<img class='dog'>");
   dog_img.attr("src", "http://placedog.com/400/400");
   $("body").append(dog_img);

   var panda_img = $("<img class='panda'>");
   panda_img.attr("src", "http://www.cutepandapictures.com/wp-content/uploads/2012/05/cutepandamombaby.jpg");
   $("body").append(panda_img);

   $("body").on('mousemove', function(event){
      var msg = "(" + event.pageX + ", " + event.pageY + ")";
      $("h2#coords").text(msg);

      $(".cat").css({"margin-left": event.pageX/3, "margin-top": event.pageY/3});

      $(".dog").css({"margin-left": event.pageX/6, "margin-top": event.pageY/6});

      $(".panda").css({"margin-left": event.pageX/5, "margin-top": event.pageY/5});
   })

   $("img").on('click', function(event){
      event.stopPropagation();
      $(this).toggleClass("border");
   });

   $("body").on('click', function(){
      $("body").off("mousemove");
   });
});