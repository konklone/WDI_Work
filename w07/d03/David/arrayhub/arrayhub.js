window.onload = function() {
  console.log("LOADED!!!");
  submitForm(document.querySelector("form"));
}

function submitForm(formElement){
  var formInput = formInput = document.querySelector("input");
  // could also use getUser(form.elements["handle"].value) -- this targets the input in the form with name="handle"
  formElement.addEventListener("submit", function(e){
    e.preventDefault();
    getUser(formInput.value, displayUser);
    formInput.value = "";
  }); 
}

function getUser(handle, callback) {
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("load", function(){
    callback(JSON.parse(httpRequest.responseText));
  });
  httpRequest.open('GET','https://api.github.com/users/' + handle); 
  httpRequest.send();
}

function displayUser(handleObj){
  var userDiv = document.createElement("div");
  userDiv.className = "user";
  var userImg = document.createElement("img");
  userImg.src = handleObj.avatar_url;
  var h2 = document.createElement("h2");
  var userLink = document.createElement("a");
  userLink.textContent = handleObj.login;
  userLink.href = handleObj.html_url

   userImg.addEventListener("dblclick", function(){
    // removes the parent node of the image element, which is the div
    // or can use var grandparent = this.parentNode.parentNode;
    // grandparent.removeChild(this.parentNode);
    // would use this if we didn't know what the parent is
    document.body.removeChild(this.parentNode);
  });

  userDiv.appendChild(userImg);
  h2.appendChild(userLink);
  userDiv.appendChild(h2)
  document.body.appendChild(userDiv);


}

