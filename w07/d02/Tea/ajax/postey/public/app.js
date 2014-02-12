window.onload = function(){
  submitForm(document.querySelector("form"));
}

function submitForm(formElement){
  formElement.addEventListener("submit", function(event){
    event.preventDefault();
    console.log("FORM SUBMITTED!");
  });
}

function postData(formElement, callback) {
  var httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("load", callback);
  httpRequest.open("POST", "/");
  httpRequest.send;

  var serializedData = newFormData(formElement);
  httpRequest.send(serializedData);
}