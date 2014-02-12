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
    window.response = this.responseText;
    // console.log(this.responseText);
    var posts = JSON.parse(window.response);
    var ul = document.querySelector("ul");
    ul.innerHTML = "";
    for(var i = 0; i < posts.length; i++) {
      var li = document.createElement("li");
      li.innerHTML = "Title " + posts[i].title + " " + "Content " + posts[i].content;
      ul.appendChild(li);
    }
  });

  httpRequest.open("POST", "/");

  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);
}

function displayResponse(serverResponse){

}