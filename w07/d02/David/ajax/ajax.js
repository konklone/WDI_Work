window.onload = function() {
  console.log("LOADED!!");
  getMovie("Drive", displayMovie);
}

function getMovie(movie, callback) {
  console.log("run ajax function");
  var httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener('load', function(){
    callback(JSON.parse(httpRequest.responseText));
  });
  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();
}

function displayMovie(movie) {
  var poster = movie.Poster;
  var htmlImg = document.createElement("img");
  htmlImg.src = poster;
  document.body.appendChild(htmlImg);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}