function getMovie(movie, actionFunction){
  // set window. to make it accessible within console
  // window.httpRequest = new XMLHttpRequest();

  // // listens to Load event before doing this
  // httpRequest.addEventListener("load", function(){
  //     callback(JSON.parse(httpRequest.responseText));
  // });

  // httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  // httpRequest.send();


  // jQuery.ajax({
  //   url: "http://www.omdbapi.com/?t=" + movie,
  //   type: "GET",
  //   dataType: "json",
  //   success: function(data){ actionFunction(data)); }
  // });

  jQuery.getJSON( "http://www.omdbapi.com/?t=" + movie, function(data){ actionFunction(data); });

  // jQuery.get( "http://www.omdbapi.com/?t=" + movie, function(data){ actionFunction(JSON.parse(data)); });
}


function displayMovie(movie){
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}

// new jQuery function for console.log
jQuery.prototype.cljq = function(){
  console.log(this);
  return this;
}

window.onload = function(){
  console.log("loaded");
  // create h1 and append to body
  $('<h1>').text('Pick a Film').appendTo($('body'));
  // create form and append to body
  var form = $('<form>').appendTo($('body'));
  // create form input with attributes and append to body
  var label = form.append( $("<label>").text("Movie Title").cljq() );
  form.append( $("<label>").text("Movie Title").cljq() );
  form.append( $("<input>").cljq()
                .attr({"name":"movieTitle", "type":"text"})
                .css({
                  "width":"30em",
                  "height":"1.2em",
                  "display":"block",
                  "background-color":"lightblue"
                    })
              );
  form.append( $("<label>").text("Action!") );
  form.append( $("<select>").cljq()
                .attr("name","typeOfAction")
                .css({
                  "width":"10em",
                  "height":"2em",
                  "display":"block"
                    })
              );
$("select").append($("<option>").attr("value", "none").html("Pick One:"));
$("select").append($("<option>").attr("value", "displayMovie").html("Show Me!"));
$("select").append($("<option>").attr("value", "alertYear").html("Alert Me!"));
$("select").val("none");

  form.append( $("<button>")
                .text("Submit!")
                .css({
                  "height":"2em",
                  "width":"5em",
                  "margin-top":"10px"})
              );


function validate(e) {
    e.preventDefault();

    if ($(this.movieTitle).val() === ""){
      alert("You need to enter a movie title!");
    } else if ($(this.typeOfAction).val() === "none") {
      alert("You need to choose an action!");
    } else {
      console.log("SUCCESSFULLY SUBMITTED");
      if ($(this.typeOfAction).val() === "alertYear") {
        getMovie( $(this.movieTitle).val(), alertYear );
      } else {
        getMovie( $(this.movieTitle).val(), displayMovie );
      }
    }
  }

form.submit( validate );

}







