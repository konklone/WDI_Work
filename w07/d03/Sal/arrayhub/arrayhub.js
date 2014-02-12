window.onload = function() {
  console.log("Loaded")
  form = document.getElementById('search-users');
  form.addEventListener("submit", function(e){
    e.preventDefault();
    getGithub(form.elements["handle"].value, displayGithub)
  });
}


function getGithub(handle, callback) {
  window.httpRequest = new XMLHttpRequest();

  console.log("Before request.")
  console.log(httpRequest.responseText)

  httpRequest.addEventListener("load", function(){
    callback(JSON.parse(httpRequest.responseText));
  });

  httpRequest.open("GET", "https://api.github.com/users/" + handle);
  httpRequest.send();

  console.log(httpRequest.responseText)
}



function displayGithub(handle) {
  var userDiv = document.createElement('div');
  userDiv.className = 'user';
  document.body.appendChild(userDiv)
  var userImg = document.createElement('img');
  userImg.src = handle.avatar_url
  userDiv.appendChild(userImg)

  userImg.addEventListener('dblclick', function(){
    document.body.removeChild(this.parentNode);
  });

  // OR!!!!
  // userImg.addEventListener('dblclick', function(){
  //   var grandparent = this.parentNode.parentNode;
  //   grandparent.removeChild(this.parentNode);
  // });


  var userH2 = document.createElement('h2');
  userDiv.appendChild(userH2);
  var link = document.createElement('a')
  link.href = handle.html_url
  link.textContent = handle.login
  userH2.appendChild(link)
}