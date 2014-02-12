window.onload = function() {

  var form = document.querySelector('form');
  form.addEventListener('submit', function(e) {
    e.preventDefault();
    requestGithub(form.elements['handle'].value);
  });
}

function requestGithub(handle) {
  var httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener('load', function() {
    addInfo(JSON.parse(httpRequest.responseText));
  });
  httpRequest.open("GET", "https://api.github.com/users/" + handle);
  httpRequest.send();
}

function addInfo(info) {
  var div = document.createElement('div');
  div.setAttribute('class', 'user');

  var img = document.createElement('img');
  img.src = info.avatar_url;

  img.addEventListener('dblclick', function() {
    document.body.removeChild(this.parentNode);
  });

  var h2 = document.createElement('h2');
  var a = document.createElement('a');
  a.href = info.html_url;
  a.innerText = info.login;

  h2.appendChild(a);
  div.appendChild(img);
  div.appendChild(h2);

  document.body.appendChild(div);
}