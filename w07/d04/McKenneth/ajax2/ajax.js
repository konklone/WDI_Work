// function getMovie(movie, callback){
  // set window. to make it accessible within console
  // window.httpRequest = new XMLHttpRequest();

  // // listens to Load event before doing this
  // httpRequest.addEventListener("load", function(){
  //     callback(JSON.parse(httpRequest.responseText));
  // });

  // httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  // httpRequest.send();
  // }
function getMovie(movie, actionCallback){
  $.ajax({
    url: "http://www.omdbapi.com/?t=" + movie,
    type: "GET",
    success: function(data){actionCallback(JSON.parse(data));}
  });
}

// CAN BE CONDENSED DOWN INTO:
// function getMovie(movie, actionCallback){
//   $.getJSON("http://www.omdbapi.com/?t=" + movie, function(data){actionCallback(data); });
// }




function displayMovie(movie){
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}


// FORM IN jQUERY
jQuery.prototype.cljq = function(){
  console.log(this);
  return this;
}

function newForm(){
  var form = $("<form>");
  form.appendTo($("body"));
  var input = $("<input>").attr({"name":"movieTitle", "type" : "text"}).appendTo(form);
  // var select = $("<select id = 'selector'><option value = 'showPoster'>Show Poster</option><option value = 'alert'>Alert Me</option></select>").appendTo(form);
 var select = $("<select>").attr("name", "action").appendTo(form);  
 select.append($("<option>").attr("value", "showPoster").html("Show Poster"));
 select.append($("<option>").attr("value", "alertMe").html("Alert Me"));


  $("<button>").appendTo(form).html("Mov(e)me");
  
  form.on("submit", function(event){
    event.preventDefault();
    console.log($(this.action).val());

    if($(this.movieTitle).val() === ""){
      alert("You need to enter a movie!!");
    }else
    if($(this.action).val() === "showPoster" ){
     $(getMovie(input.val(), displayMovie)).appendTo($("body")); 
   }else 
   if($(this.action).val() === "alertMe" ){
     $(getMovie(input.val(), alertYear));
   }
    
  });

};
$(function(){
  newForm();
});







