window.onload = function() {

  form = document.getElementById("search-users");
  form.addEventListener("submit", function(e))
    e.preventDefault();
    getUser(form.elements["handle"].value, addUser);
    // var input = document.querySelector("input");
    // getUser(input.value);
    // input.value = "";
    // not addUser() because we don't want to run it right away
    // we are referencing addUser
  });
}
function getUser(handle, callback) {
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("load", function(){
    callback(JSON.parse(httpRequest.responseText));
  });
  httpRequest.open("GET", "https://api.github.com/users/" + handle);
  httpRequest.send();
}

function addUser(handle) {
  var div = document.createElement("div");
  var img = document.createElement("img");
  img.src = handle["avatar_url"];

  img.addEventListener('dblclick', function()){
    document.body.removeChild(this.parentNode);
  });

  var h2 = document.createElement("h2");
  var a = document.createElement("a");
  a.href = handle["html_url"];
  a.textContent = handle["login"];

  document.body.appendChild(div);
  div.appendChild(img);
  h2.appendChild(a);
  div.appendChild(h2);
}
