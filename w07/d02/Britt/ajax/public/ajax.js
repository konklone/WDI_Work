window.onload = function(){
  console.log("LOADED!");
  attachSubmitListener(document.querySelector("form"));
};

function attachSubmitListener(formElem){
  formElem.addEventListener("submit", function(event){
    event.preventDefault();
    console.log("FORM SUBMITTED!");
    postData(this);
  });
};

function postData(formElem){
  var httpRequest = new XMLHttpRequest();

  // httpRequest.addEventListener("load", callback);

  httpRequest.open("post", "/");

  var serializedData = new FormData(formElem);
  httpRequest.send(serializedData);

  httpRequest.addEventListener("load", function(){
    window.response = this.responseText;
  });
};

