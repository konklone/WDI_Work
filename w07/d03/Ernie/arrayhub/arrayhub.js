window.onload = function () {
  form = document.getElementById('search-users');
  form.addEventListener('submit', function(e){
    e.preventDefault();
    getUser(form.elements["handle"].value);
  });
}

function getUser (user) {
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener('load',function(){
    displayUser(JSON.parse(httpRequest.responseText));
  });
  httpRequest.open('GET', "https://api.github.com/users/" + user)
  httpRequest.send();
}

function displayUser (user){
  var div = document.createElement('div');
  div.className = 'user';

  var img = document.createElement('img');
  img.src = user.avatar_url;
  div.appendChild(img);

  img.addEventListener('dbclick', function(){
    document.body.removeChild(this.parentNode);
  });

  var header = document.createElement('h2');
  var anchor = document.createElement('a');
  a.href = user.html_url;
  a.textContent = user.login;
  header.appendChild(anchor);
  div.appendChild(header);

  document.body.appendChild(div);
}