window.onload = function(){
   console.log("Loaded!");
}

function getMovie(movie, callback){
   window.httpReq = new XMLHttpRequest();
   httpReq.addEventListener("load", function(){
      callback(JSON.parse(httpReq.responseText));
      // displayMovie(httpReq.responseText);
   });
   httpReq.open("GET", "http://www.omdbapi.com/?t=" + movie.replace(" ", "+"));
   httpReq.send();
}

function displayMovie(movie){
   var poster = document.createElement("img");
   poster.src = movie.Poster;
   document.body.appendChild(poster);
}

function alertYear(movie){
   alert(movie.Title + " was made in " + movie.Year);
}