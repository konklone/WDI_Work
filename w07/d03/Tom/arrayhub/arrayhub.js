window.onload = function(){
  console.log("Loaded");
  form = document.getElementById("search-users");
  form.addEventListener("submit", function(e){
    // this stops the relaod of the page
    e.preventDefault();
    getUser(form.elements["handle"].value);
  });
}

function getUser(handle){
  window.httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener("load", function(){
    addUser(JSON.parse(httpRequest.responseText));
  });

  httpRequest.open("GET", "https://api.github.com/users/" + handle);
  httpRequest.send();
}

function addUser(user) {
  var div = document.createElement("div");
  div.className = "user";

  var img = document.createElement("img");
  img.src = user.avatar_url;
  div.appendChild(img);

  img.addEventListener("dblclick", function(){
    // deleting you have to use removeChild to remove the image we deleted the div, shich is a child of the body
    document.body.removeChild(this.parentNode);
  });

  var h2 = document.createElement("h2");
  var a = document.createElement("a");
  a.href = user.html_url;
  a.textContent = user.login;
  h2.appendChild(a);
  div.appendChild(h1);

  document.body.appendChild(div);

  console.log(user.avatar_url);
  console.log(user.login);
  console.log(user.html_url);

}


