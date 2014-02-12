window.onload = function(){

  var input = document.querySelector("input");
  var button = document.querySelector("button");
  button.addEventListener('click', function(e){
    e.preventDefault();
    var username = input.value;
    getGit(username, createUserDiv);
  });
}

function getGit(username, callback){
  // set window. to make it accessible within console
  window.httpRequest = new XMLHttpRequest();

  // listens to Load event before doing this
  httpRequest.addEventListener("load", function(){
      callback(JSON.parse(httpRequest.responseText));
  });

  httpRequest.open("GET", "https://api.github.com/users/" + username);
  httpRequest.send();
}

function createUserDiv(username){
  // user div
  var div = window.document.createElement("div");
  div.className = "user";
  document.body.appendChild(div);

  // user image
  var img = window.document.createElement("img");
  img.src = username.avatar_url;
  div.appendChild(img);

  //add listener to Div to make it removable on two clicks
  img.addEventListener("dblclick", function(){
    document.body.removeChild(this.parentNode);
  });

  //image rollover effect
  img.addEventListener("mouseover", function(){
    console.log(username.name);
  })

  //user name & link to Github
  var h2 = window.document.createElement("h2");
  var a = window.document.createElement("a");
  a.href = "https://github.com/" + username.login;
  a.innerHTML = username.login;
  h2.appendChild(a);
  div.appendChild(h2);

}