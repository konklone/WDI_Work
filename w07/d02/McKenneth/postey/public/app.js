window.onload = function(){
  console.log("loaded");
  submitForm(document.querySelector("form"));
}

function submitForm(formElement) {
  formElement.addEventListener("submit", function(e){
    e.preventDefault();
    console.log("form submitted")
    postData(this);
    // resets the form
    this.reset();
  });
}

function postData(formElement ){
  var httpRequest = new XMLHttpRequest();
  var ul = document.querySelector("ul");
  var li = document.createElement("li");
  // httpRequest.addEventListener( "load" , callback);
  httpRequest.addEventListener("load", function(){
    window.response = JSON.parse(this.responseText);
    var lastPost = window.response[window.response.length - 1];
     
    li.innerText = lastPost.title + " | " + lastPost.content;
    ul.appendChild(li);
  });
  httpRequest.open("POST", "/");

// formdata translates  the data into a form encoded string
  var serializedData = new FormData(formElement);

  httpRequest.send(serializedData);

 
  



  
}

