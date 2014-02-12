window.onload = function() {
  console.log("Loaded!");
};

function getMovie(movie, callback) {
  window.httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener("load", function(){
    callback(httpRequest.responseText);
  });

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();

  console.log("After request.");
  console.log(httpRequest.responseText);
}

function displayMovie(movieTitle){
  var img =  document.createElement("img")
  movie = JSON.parse(movieTitle);
  img.src = movie["Poster"];
  document.body.appendChild(img);
}

function alertYear(item){
  var movie = JSON.parse(item);
  alert(movie.Title + " was made in " + movie.Year)
}