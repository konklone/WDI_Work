$(function(){
  addAnimals();
});

function addAnimals(){
  var kitty = $("<img>").attr("src", "http://31.media.tumblr.com/a9186ac431436b5646f6260687f5e3ec/tumblr_mpxezeTo3K1qeyp6yo6_400.gif").addClass("cat").appendTo($("body"));
  var doggy = $("<img>").attr("src", "http://upload.wikimedia.org/wikipedia/en/4/45/DJ_Dog.gif").addClass("dog").appendTo($("body"));
  var panda = $("<img>").attr("src", "http://www.pbh2.com/wordpress/wp-content/uploads/2013/04/cutest-panda-gifs-babies.gif").addClass("panda").appendTo($("body")); 

  function moveIt(){
    $("body").on("mousemove", function(event){
    $("h1#coords").html("X: " + event.pageX +" | Y: " + event.pageY);
    kitty.css("margin-left", (event.pageX / 3) ).css("margin-top", (event.pageY / 3) );
    panda.css({"margin-left": (event.pageX / 3), "margin-top":(event.pageY/ 3)} );
    doggy.css("margin-left", (event.pageX / 4 ) ).css("margin-top", (event.pageY / 4) );
  });
  };

  moveIt();
  $("img").on("click", function(){
    event.stopPropogation;
    $(this).toggleClass("border");
    
  });
  $("body").on("dblclick", function(){
    $(this).css("background", "url('http://fc09.deviantart.net/fs70/f/2012/168/a/1/nyan_cat__troll__gif__by_lookincool45-d53v8j8.gif')");
    $(this).off()
  });


}