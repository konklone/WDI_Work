window.onload = function(){
  console.log("LOADED");
  attachListeners();
};

function attachListeners(){
  var searchBar = document.querySelector("input[name='handle']");
  var form = document.querySelector("form");

  form.addEventListener("submit", function(event){
    event.preventDefault();
    var handle = searchBar.value;
    displayGithub(handle);
  });
};

function getGithub(handle, callback){
  var apiAddress = "https://api.github.com/users/";

  var httpReq = new XMLHttpRequest();

  httpReq.addEventListener("load", function(){
    callback(JSON.parse(httpReq.responseText));
  });

  httpReq.open("get", apiAddress + handle);
  httpReq.send();
};

function appendGithub(account){
  var div = document.createElement("div");
  div.class = "user";
  div.id = account.login;

  var img = document.createElement("img");
  img.src = account.avatar_url;
  
  img.addEventListener("dblclick", function(){
    var thisAccount = document.querySelector("div#" + account.login);
    document.body.removeChild(thisAccount);
  });

  img.addEventListener("mouseover", function(){
    console.log(account.name);
  });

  var h2 = document.createElement("h2");

  var a = document.createElement("a");
  a.href = account.html_url;
  a.target = "_blank";
  a.innerHTML = account.login;

  h2.appendChild(a);
  div.appendChild(img);
  div.appendChild(h2);
  document.body.appendChild(div);
};

function displayGithub(handle){
  getGithub(handle, appendGithub);
};