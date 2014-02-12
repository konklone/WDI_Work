window.onload = function(){
  console.log("ready to git");


    var userField = document.getElementsByName("handle")[0];

    var elForm = document.getElementById("search-users");
  
    //set up event listener
    elForm.addEventListener("submit", function(event){
        event.preventDefault();
        console.log("submit");
        getGitter(userField.value);


    });

}



function getGitter(username){
  window.httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener("load", function(){
    console.log(JSON.parse(httpRequest.responseText));
    updatePage();
  });

  httpRequest.open("GET", "https://api.github.com/users/" + username);
  httpRequest.send();

}

var updatePage = function(){
  response = JSON.parse(httpRequest.responseText);

  newdiv = document.createElement("div");
  newdiv.className = "user";

  newimg = document.createElement("img");
  newimg.src = response["avatar_url"];

  newimg.addEventListener("dblclick", function(){
    document.body.removeChild(this.parentNode);
  })

  newa = document.createElement("a");
  newa.href = response["html_url"];
  newa.innerHTML = response["login"];

  newh = document.createElement("h2");

  newh.appendChild(newa);

  newdiv.appendChild(newimg);
  newdiv.appendChild(newh);  

  document.body.appendChild(newdiv);
}




// function getMovie(movie, callback){
//   // set window. to make it accessible within console
//   window.httpRequest = new XMLHttpRequest();

//   // listens to Load event before doing this
//   httpRequest.addEventListener("load", function(){
//       callback(JSON.parse(httpRequest.responseText));
//   });

//   httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
//   httpRequest.send();
// }

// function displayMovie(movie){
//   var img = document.createElement("img");
//   img.src = movie.Poster;
//   document.body.appendChild(img);
// }

// function alertYear(movie) {
//   alert(movie.Title + " was made in " + movie.Year);
// }

