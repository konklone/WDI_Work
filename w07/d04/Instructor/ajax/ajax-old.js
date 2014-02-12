function getMovie(movie, callback){
  // set window. to make it accessible within console
  window.httpRequest = new XMLHttpRequest();

  // listens to Load event before doing this
  httpRequest.addEventListener("load", function(){
      callback(JSON.parse(httpRequest.responseText));
  });

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();
}

function displayMovie(movie){
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}

window.onload = function(){

}







