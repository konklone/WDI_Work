window.onload = function(){
  console.log('ready to ajax');


}

var getMovie = function(movie){
  window.httpRequest = new XMLHttpRequest();
  
  httpRequest.addEventListener("load", function(){
    console.log(httpRequest.responseText);
  });

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();

  console.log("http://www.omdbapi.com/?t=" + movie);
  console.log(httpRequest.responseText);
}

var displayMovie = function(movieTitle){
  //gets movie data
  window.movieRequest = new XMLHttpRequest();

  movieRequest.open("GET", "http://www.omdbapi.com/?t=" + movieTitle);
  movieRequest.send();

  movieRequest.addEventListener("load", function(){

    response = movieRequest.responseText;
    response = JSON.parse(response);
    posterImage = response["Poster"];

    //get img 
    img = document.querySelector(".image");
    img.src = posterImage;

  });
}