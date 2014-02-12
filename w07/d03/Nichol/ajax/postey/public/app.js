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
    console.log(httpRequest.responseText);
    window.response = httpRequest.responseText;

    var jasonObject = JSON.parse(window.response);

    //use document.querySelector("ul");
    
    document.getElementsByTagName("ul")[0].innerHTML = "";
    for(var i = 0; i<jasonObject.length; i++){
      var newli = document.createElement("li");
      newli.innerHTML = "Title: " + jasonObject[i]["title"] + " Content: " + jasonObject[i]["content"];
      document.getElementsByTagName("ul")[0].appendChild(newli);
    }

  });

  httpRequest.open("POST", "/");

  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);
  console.log("data sent");
}