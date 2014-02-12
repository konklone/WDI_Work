window.onload = function() {
  console.log("JS Loaded");
  submitForm(document.querySelector("form"));
};

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
  
  //getsresponse from server
    //console.log(this.responseText);
  });

  httpRequest.open("POST", "/");

  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);

}
