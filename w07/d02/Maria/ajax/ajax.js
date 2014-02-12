window.onload = function() {
  console.log("JS Loaded");
  submitForm(document.querySelector("form"));
}

function submitForm(formElement) {
  formElement.addEventListener("submit", function(event) {
    event.preventDefault();
    console.log("FORM SUBMITTED!");
    postData(this);
  });
}

function postData(formElement) {
  var httpRequest = new XMLHttpRequest();

  //httpRequest.addEventListener("load", callback);

  httpRequest.open("POST", "/");

  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);
}


// window.onload = function(){
//   console.log("LOADED!");
// };

// function getMovie(movie,callback){
//   //set window. to make it possible to access within console
//   window.httpRequest = new XMLHttpRequest(); 
  
//   //listens to Load event beforedoing this 
//   httpRequest.addEventListener("load", function(){
//     callback(JSON.parse(httpRequest.responseText));
//   });

//   httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
//   httpRequest.send();
// }

//function that takes a movietitle as an argument and gets that gets
//movie data and then renderes the movie poster to the screen

// function displayMovie(movie){
//   var img = document.createElement("img");
//   img.src = movie.poster;
//   document.body.appendChild(img);

//   window.httpRequest = new XMLHttpRequest();
//   httpRequest.addEventListener("load", function(){
//   callback(httpRequest.responseText);
//   var poster = document.createElement("div");
//   posterQ = httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
//   JSON.stringify(response)
//   //response= httpRequest.responseText
//   response["Poster"];
//   httpRequest.send();

// document.body.appendChild(poster);
//   });

// }
// function alertYear(item){
//   var movie = JSON.parse(item);
//alert(movie.Title+ "was made in " + movie.Year);
}