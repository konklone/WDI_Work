window.onload = function() {
  console.log("Loaded!")
}


function getAjax(movie, callback) {
  httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener("load", function(){
    console.log("After load")
    callback(httpRequest.responseText);

  })

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();

}



function displayMovie(movieTitle){
  getAjax(movieTitle, function(text){
   var objResponse = JSON.parse(text);

   var poster = objResponse.Poster;
   imgPoster = document.createElement("img");
   imgPoster.src = poster;
   var body = document.querySelector("body");
   body.appendChild(imgPoster);


  })
}

