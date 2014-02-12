window.onload = function() {
  console.log("JS Loaded");
  submitForm(document.querySelector("form"));
}

function submitForm(formElement) {
  formElement.addEventListener("submit", function(event) {
    event.preventDefault();
    console.log("FORM SUBMITTED!");
    postData(this);
  });
}

function postData(formElement) {
  var httpRequest = new XMLHttpRequest();

  // The load event is fired when the response is received
  httpRequest.addEventListener("load", function(){
    window.response = this.responseText;
    var posts = JSON.parse(window.response);
    var ul = document.getElementsByTagName("ul");
    ul.innerHTML = "";

    for (var i = 0; i < posts.length; i ++) {
    var li = document.createElement("li");
    li.innerHTML = "Title: " + posts[i].title + " Content: " + posts[i].content;
    ul.appendChild(li);
    }
    //console.log(this.responseText);
  });

  httpRequest.open("POST", "/");

  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);

}

var ul = document.createElement("ul");
var li = document.createElement("li");



