window.onload = function() {
  console.log('loaded');
}

function getMovie(movie, callback) {
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener('load', function() {
    callback(httpRequest.responseText);
  });
  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();
}

function displayMovie(movie) {
  var poster = JSON.parse(movie).Poster;
  var body = document.querySelector('body');
  var img = document.createElement('img');
  img.setAttribute('src', poster);
  body.appendChild(img);
}

function alertYear(item) {
  var movie = JSON.parse(item);
  alert(movie.Title + " was made in " + movie.Year);
}