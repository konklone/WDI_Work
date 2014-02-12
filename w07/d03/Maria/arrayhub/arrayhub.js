window.onload = function(){
  console.log("LOADED!");
};

function getUser(handle){
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("load", function(){
    //console.log(httpRequest.responseText);
    addUser(JSON.parse(httpRequest.responseText));
  });
  httpRequest.open("GET", "https://api.github.com/users/" + handle);
  httpRequest.send();
}

function addUser(user){
  // console.log(user.avatar_url);
  // console.log(user.login);
  // console.log(user.html_url);
}
//button.addEventListener("click", function() {
 
//  });





//var newDiv = document.createElement("div");
//newDiv.img("https://api.github.com/users/" + handle);
//document.body.appendChild(newDiv);

// function getAvatar(name, callback){
//   //set window. to make it possible to access within console
//   window.httpRequest = new XMLHttpRequest();

//   //listens to Load event beforedoing this 
//   httpRequest.addEventListener("load", function(){
//     callback(JSON.parse(httpRequest.responseText));
//   });

//   httpRequest.open("GET", "https://api.github.com/users/" + name);
//   httpRequest.send();
// }



//  function displayAvatar(person) {
//    var img = document.createElement("img");
//    img.src = person.url;
//    document.body.appendChild(img);
// }