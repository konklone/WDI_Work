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
  // httpRequest.addEventListener( "load" , callback);
  httpRequest.addEventListener("load", function(){
    window.response = this.responseText;
    var posts = JSON.parse(window.response);
    var ul = document.querySelector('ul');
    ul.innerHTML = ""
    for (var i = 0; i < window.response.length; i++) {
      var li = document.createElement('li');
      li.innerHTML = "Title: " + posts[i].title + " Content: " + posts[i].content;
      ul.appendChild(li);
    }

  });
  httpRequest.open("POST", "/");

// formdata translates  the data into a form encoded string
  var serializedData = new FormData(formElement);

  httpRequest.send(serializedData);

  // var ul = document.querySelector("ul")
  // var li = document.createElement("li");
  // li.innerText = "title: " + window.response.title + " content: " + window.response.content;
  // ul.appendChild(li);


  
}
