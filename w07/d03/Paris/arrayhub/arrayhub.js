window.onload = function() {
  console.log( "Loaded!" );
  form = document.getElementById("search-users")
  formElement.addEventListener("submit", function(event) {
  event.preventDefault();
  getUser(form.elements["handle"].value, addUser);
  });
}

function getProfile(handle, callback) {
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("load", function(){
    callback(JSON.parse(httpRequest.responseText));
    // call the displayMovie function within here as a callback
    // displayMovie(httpRequest.responseText);
      // callback(JSON.parse(httpRequest.responseText));
  });
  httpRequest.open("GET", "https://api.github.com/users/" + handle);
  httpRequest.send();
}

function addUser(user){
  var body = document.querySelector("body")
  var div = document.createElement("div");
  div.className = "user";
  document.body.appendChild(div);
  var img = document.createElement("img");
  img.src = handle.avatar_url;
  document.div.appendChild(img);

  img.addEventListener("dblclick", function(){
  var grandparent = this.parentNode.parentNode;
  grandparent.removeChild(this.parentNode,parentNode);
  })

  var h2 = document.createElement("h2");
  var a = document.createElement("a");
  a.href = user.html_url;
  a.textContent = user.login;
  h2.appendChild(a);
  document.div.appendChild(h2);
}

// function submitForm(formElement) {
//   formElement.addEventListener("submit", function(event) {
//     event.preventDefault();
//     console.log("FORM SUBMITTED!");
//     // this is the ojbect on which we are listening. 
//     // event listeners: the value of this is the object. 
//     // post data which is the function below encodes the submitted data and sends it to the server. 
//     postData(this);
//   });
//   httpRequest.open("GET", "https://api.github.com/users/" + handle);
//   httpRequest.send();
// }



function postData(formElement) {
  var httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("submit");
  httpRequest.open("POST", "/");
  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);
  // need serialized data as the server is looking for a form data type, a crazy string called form-encoded data.
} 


