window.onload = function() {
  console.log( "Loaded!" );
}

function getMovie(movie, callback) {
  window.httpRequest = new XMLHttpRequest();
  
  httpRequest.addEventListener("load", function(){
    // call the displayMovie function within here as a callback
    // displayMovie(httpRequest.responseText);
      callback(JSON.parse(httpRequest.responseText));
  });

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();

}

function displayMovie(response) {
  var img = document.createElement("img");
  img.src = response.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made " + movie.Year);
}




