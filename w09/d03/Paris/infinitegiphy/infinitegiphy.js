var gifs;
var count = 0;

function getGifs(keyword) {
  $.ajax({
    url: "http://api.giphy.com/v1/gifs/search?q=" + keyword + "&api_key=dc6zaTOxFJmzC&limit=100",
    type: "GET",
    dataType: "json",
    success: function(response){
      gifs = response;
      count = 0;
    },
  });  
}

function appendGif() {
  img =  $("<img src='" + gifs.data[count].images.original.url + "' />" );
  $("body").append(img);
  count++;
}

$(function(){

  getGifs("puppies");

  $("form").on("submit", function(e) {
    e.preventDefault();
    getGifs($("input").val());
    $("input").val("");
  });

  $("#add").on("click", function() {
    appendGif();
  });

});

$( window ).scroll(function() {
  if $(window).scrollTop() + $(window).height >= $(document).height
    appendGif();
});

// if at the bottom of a page, append gifs and set to the top of the window again. 
// should load more stuff when you hit the bottom of the screen.







