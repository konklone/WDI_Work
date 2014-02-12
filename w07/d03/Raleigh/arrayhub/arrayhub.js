window.onload = function(){
   var button = document.querySelector("form#search-users button");
   button.addEventListener("click", function(e){
      e.preventDefault();
      var input = document.querySelector("input");
      // console.log(input.value);
      getUser(input.value);
      input.value = "";
   });
}

function getUser(handle){
   window.httpReq = new XMLHttpRequest();
   httpReq.addEventListener("load", function(){
      displayUser(JSON.parse(httpReq.responseText));
   });
   httpReq.open("GET", "https://api.github.com/users/" + handle);
   httpReq.send();
}

function displayUser(handle){
   var div = document.createElement("div");
   div.className = "user";
   var image = document.createElement("img");
   image.src = handle["avatar_url"];
   var h2 = document.createElement("h2");
   var link = document.createElement("a");
   link.href = handle["html_url"];
   link.textContent = handle["login"];

   image.addEventListener("dblclick", function(){
      document.body.removeChild(this.parentNode);
   });

   h2.appendChild(link);
   div.appendChild(image);
   div.appendChild(h2);
   document.body.appendChild(div);
}