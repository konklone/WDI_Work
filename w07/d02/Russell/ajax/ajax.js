window.onload = function(){
  console.log("loaded!")
}

function getMovie(movieTitle, callback){
  window.httpRequest = new XMLHttpRequest();

  //create a variable that is a new XML object
  //get from that URL + movie title
  console.log("Before request.");
  console.log(httpRequest.responseText);

  httpRequest.addEventListener("load", function(){
    console.log("After Load.");
    console.log(httpRequest.responseText)
    alertYear(httpRequest.responseText);
  });

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movieTitle);
  httpRequest.send();
  
  console.log("After Request");
  console.log(httpRequest.responseText);
}


function displayMovie(item){
  
  var movie = JSON.parse(item);
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
  }  

function alertYear(item){
  var movie = JSON.parse(item);
  alert(movie.Title + "was made in" + movie.Year)
}