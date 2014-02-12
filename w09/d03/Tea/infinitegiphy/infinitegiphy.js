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
      for( var i = 0; i < 4; i++){
        appendGif();
      }  
    }
  });  
}

function appendGif() {
  img =  $("<img src='" + gifs.data[count].images.original.url + "' />" );
  $("body").append(img);
  count++;
}

$(function(){

  $("form").on("submit", function(e) {
    e.preventDefault();
    getGifs($("input").val());
    $("input").val("");
    appendFive();
  });

  $(window).scroll(function() {
    if($(window).scrollTop() + $(window).height() >= $(document).height()) {
      appendGif();
    }
  });
});