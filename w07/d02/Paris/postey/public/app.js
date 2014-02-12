window.onload = function() {
  console.log( "JS Loaded!" );
  submitForm(document.querySelector("form"));
}



function submitForm(formElement) {
  formElement.addEventListener("submit", function(event) {
    event.preventDefault();
    console.log("FORM SUBMITTED!");
    // this is the object on which we are listening. 
    // event listeners: the value of this is the object. 
    // post data which is the function below encodes the submitted data and sends it to the server. 
    postData(this);
    this.reset();
  });
}

function postData(formElement) {
  var httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("load", function(){
  window.response = this.responseText;
  var posts = JSON.parse(window.response);
  var ul = document.querySelector("ul");
  ul.innerHTML = "";

  for (var i = 0; i < posts.length; i++) {
  var li = document.createElement("li");
  li.innerHTML = "Title " + posts[i].title + "Content " + posts[i].content;
  ul.appendChild(li);  
  }
  });
  httpRequest.open("POST", "/");

  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);
  // need serialized data as the server is looking for a form data type, a crazy string called form-encoded data.
} 

// function addPost() {
//   var ul = document.querySelector("ul");
//   var li = document.createElement("li");
  
//   ul.appendChild(li);

// }




