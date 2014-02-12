window.onload = function() {
  console.log("ello derr");
  submitForm(document.querySelector("form"));

}

function submitForm(formElement) {
  formElement.addEventListener('submit', function(e){
    e.preventDefault();
    console.log("FORM SUBMITTED!");
    postData(this);

    // empty form
    this.reset();
  });
}

function postData(formElement) {
  var httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener("load", function() {
    window.response = this.responseText;

    renderPosts(response);
    
  });

  httpRequest.open('POST', "/");

  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);
}

function renderPosts(object) {
  var parsed = JSON.parse(object);

  var ul = document.querySelector("ul");
  ul.children = [];

  for (var i=0; i < parsed.length; i++) {
    var li = document.createElement("li");
    li.innerHTML = "Title: " + parsed[i].title; 

    ul.appendChild(li); 
  }
}