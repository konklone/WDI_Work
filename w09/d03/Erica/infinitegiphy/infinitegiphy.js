var gifs;
var count = 0;

function getKeyword(keyword){
  $.ajax( {
    url: "http://api.giphy.com/v1/gifs/search?q=" + keyword + "&api_key=dc6zaTOxFJmzC&limit=100",
    type: "GET",
    dataType: "json",
    success: function(response) {
      gifs = response;
      count = 0;
    },
  });
}

function attachGif(){
img = $("<img src='" + gifs.data[count].images.original.url + "' />");
$<button id="add">
$("body").append(img) 
}