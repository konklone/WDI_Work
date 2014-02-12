window.onload = function() {
  console.log("JS Loaded");
  submitForm(document.querySelector("form"));
}

function submitForm(formElement) {
  formElement.addEventListener("submit", function(event) {
    event.preventDefault();
    console.log("FORM SUBMITTED!");
    postData(this);
    this.reset();
  });
}

function postData(formElement) {
  var httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener("load", function(){
    var posts = JSON.parse(this.responseText);

    var ul = document.querySelector("ul");
    ul.innerHTML = "";

    for (var i = 0; i < posts.length; i ++) {
      var li = document.createElement("li");
      li.innerHTML = "Title: " + posts[i].title + " Content: " + posts[i].content
      ul.appendChild(li);
    }
    // console.log(httpRequest.responseText);
  });
  httpRequest.open("POST", "/");


  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);
}