window.onload = function(){
  console.log("LOADED!");
}

function getMovie(movie, callback){
  var movieQuery = movie.replace(" ", "+")

  var httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener("load", function(){
    callback(httpRequest.responseText);
  });

  httpRequest.open("get", "http://www.omdbapi.com/?t=" + movieQuery);
  httpRequest.send();
  return httpRequest;
};

function appendPoster(responseString) {
  var movie = JSON.parse(responseString);

  img = document.createElement("img");
  img.src = movie.Poster;
  img.alt = movie.Title;

  var body = document.body;
  body.appendChild(img);
};

function displayMovie(movieTitle){
  getMovie(movieTitle, appendPoster);
};
