window.onload = function(){
}

function getMovie(movie, callback){
  // new XMLHttpRequest object -- adding window. makes it global
  window.httpRequest = new XMLHttpRequest();

  // adds event listener -- load event fired when response received
  httpRequest.addEventListener("load", function(){
    callback(JSON.parse(httpRequest.responseText));
  })
  
  // opens and sends request to the server provided
  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();
  
}


// function that takes a movie title, gets the data and renders movie poster to screen

function showPoster(movie){
  var poster = document.createElement("img");
  
  poster.src = movie.Poster;
  
  document.body.appendChild(poster);

}

function alertYear(movie){
  // var movie = JSON.parse(item)
  alert(movie.Title + " was made in " + movie.Year);
}