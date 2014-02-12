window.onload = function() {
  
}

function getMovie(movie, callback) {
  // same as window.httpRequest
  httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener('load', function() {
    console.log(JSON.parse(httpRequest.responseText));

    // abstract possible functionality for potential input below
    callback(httpRequest.responseText);
  })

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();

  // console.log(httpRequest.responseText);
}

function displayMovie(movie) {
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}

