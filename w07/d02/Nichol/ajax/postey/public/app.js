window.onload = function(){
  console.log("js loaded");
  submitForm(document.querySelector("form"));
}


function submitForm(formElement){
  formElement.addEventListener("submit", function(e){
    event.preventDefault();
    
    console.log("form submitted!");
    postData(this);

  });
}

function postData(formElement){
  var httpRequest = new XMLHttpRequest();
  
  //httpRequest.addEventListener("load", callback);

  httpRequest.open("POST", "/");
  
  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);

}
