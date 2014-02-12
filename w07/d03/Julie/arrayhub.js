window.onload = function() {
  form = document.getElementById("search-users");
  form.addEventListener("submit", function(e){
    e.preventDefault();
    getUser(form.elements["handle"].value, makeDiv);
  });
}



function makeDiv(user){

    var gitDiv = document.createElement("div");
    gitDiv.setAttribute("class", "user");
    document.body.appendChild(gitDiv);

    var img = document.createElement("img");
    img.src = user.avatar_url;
    gitDiv.appendChild(img);

    var header = document.createElement("h2");
    var link = document.createElement("a");
    link.href = user.url;
    link.innerText = user.login;
    
    gitDiv.appendChild(header);
    header.appendChild(link);
}



function getUser(handle, callback){
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("load", function(){

    callback(JSON.parse(httpRequest.responseText))



  });
  httpRequest.open("GET", "https://api.github.com/users/" + handle);

  httpRequest.send();
}


