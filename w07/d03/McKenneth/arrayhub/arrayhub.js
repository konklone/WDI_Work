window.onload = function (){
  console.log("ready");
  submit(document.querySelector("form"));
};

function submit(formElement){
  formElement.addEventListener("submit", function(e){
    e.preventDefault();
    var input = document.querySelector("input").value
    getPerson(input, addPerson);
  })
}

function getPerson(handle, callback){

  window.httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener("load", function(){
    callback(JSON.parse(httpRequest.responseText));
  });
  httpRequest.open("GET", "https://api.github.com/users/" + handle);
  httpRequest.send();

  // var addToList = document.querySelector("form");
}

function addPerson(handle){
  var person = document.createElement("div");
  person.className = "user";
  var img = document.createElement("img");
  var nameTag = document.createElement("h2");
  var link = document.createElement("a");

  link.href = handle.html_url;
  link.innerText = handle.login;
  img.src = handle.avatar_url;

  img.addEventListener("dblclick", function(){
    alert("poop");
    console.log(this.parentNode);
    document.body.removeChild(this.parentNode);
  })
  img.addEventListener("mouseover", function(){
    console.log(handle.name);
  });

  nameTag.appendChild(link);
  person.appendChild(img);
  person.appendChild(nameTag);

  document.body.appendChild(person);
}

