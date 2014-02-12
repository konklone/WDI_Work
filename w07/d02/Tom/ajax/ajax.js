window.onload = function(){

}

function getMovie(movie, callback){
  // explicity adds the variable to the window, which makes it global
  window.httpRequest = new XMLHttpRequest();


  httpRequest.addEventListener("load", function(){
   callback(JSON.parse(httpRequest.responseText));
  });

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();

}

function displayMovie(item) {
  // Gets the movie data
  // renders the movie poster to the screen
    var movie = JSON.parse(item);
    var img = document.createElement("img");
    img.src = item.Poster;
    document.body.appendChild(img);
}

function alertYear(item) {
  alert(movie.Title + " was made in " + movie.Year);
}