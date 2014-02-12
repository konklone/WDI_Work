window.onload = function() {
  var form = document.querySelector('#search-users');

  form.addEventListener('click', function(e) {
    e.preventDefault();
    getStudent(form.elements["handle"].value, renderStudent);
    console.log(this);
  })
}

function getStudent(handle, callback) {
  httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener('load', function() {
    var parsed = JSON.parse(httpRequest.responseText);
    // console.log(parsed);
    callback(parsed);
  })

  httpRequest.open('GET', 'https://api.github.com/users/' + handle);
  httpRequest.send();
}

function renderStudent(student) {
  var div = document.createElement('div');
  div.className = "user";

  var img = document.createElement('img');
  img.src = student.avatar_url;

  img.addEventListener('dbclick', function() {
    document.body.removeChild(this.parent);
  })

  var h2 = document.createElement('h2');
  var a = document.createElement('a');
  a.href = student.html_url;
  a.innerHTML = student.login;
  h2.appendChild(a);

  div.appendChild(img);
  div.appendChild(h2);

  document.body.appendChild(div);
  console.log(student);
}