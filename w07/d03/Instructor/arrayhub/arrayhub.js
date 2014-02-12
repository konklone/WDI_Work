window.onload = function(){

form = document.getElementById('search-users');

form.addEventListener('submit', function(e) {
  e.preventDefault();
  getUser(form.elements["handle"].value, addUser);
  form.reset();
});

}

function getUser(handle, callback){
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("load", function(){
      callback(JSON.parse(httpRequest.responseText));
  });
  httpRequest.open("GET", "https://api.github.com/users/" + handle);
  httpRequest.send();
}

function logName(user){
  console.log("That's " + user.name + "!");
}

function addUser(user){
  var div = document.createElement("div");
  div.className = "user"

  var img = document.createElement("img");
  img.src = user.avatar_url;
  div.appendChild(img);

  var h2 = document.createElement("h2");
  var a = document.createElement("a");
  a.href = user.html_url;
  a.textContent = user.login;
  h2.appendChild(a)
  div.appendChild(h2);

  img.addEventListener('dblclick', function() {
    document.body.removeChild(this.parentNode);
  });
  
  img.addEventListener('mouseover', function() {
    var handle = this.parentNode.lastChild.firstChild.textContent;
    getUser(handle, logName);
  });
  

  document.body.appendChild(div);
}