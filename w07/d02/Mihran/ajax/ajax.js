window.onload = function(){
  console.log(" loaded!")  
}

function getMovie(movie, callback){
  window.httpRequest = new XMLHttpRequest();

  console.log("Before Request");
  console.log(httpRequest.responseText);

  httpRequest.addEventListener("load", function(){
    callback(httpRequest.responseText);
  })
  
  httpRequest.open("GET", "http://omdbapi.com/?t="+movie);
  httpRequest.send();
}

function displayMovie(item) {
    var json = JSON.parse(item);
    var url = json.Poster 
    poster = document.createElement("img");
    poster.src = url;
    document.body.appendChild(poster);
}

function alertYear(item){
  var movie = JSON.parse(item)
  alert(movie.Title + " was made in " + movie.Year)
}