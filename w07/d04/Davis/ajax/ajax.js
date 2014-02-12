function getMovie(movie, callback){
  //1 // set window. to make it accessible within console
  // window.httpRequest = new XMLHttpRequest();

  // // listens to Load event before doing this
  // httpRequest.addEventListener("load", function(){
  //     callback(JSON.parse(httpRequest.responseText));
  // });

  // httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  // httpRequest.send();

  //2 jQuery.ajax({
  //   url: "http://www.omdbapi.com/?t=" + movie,
  //   type: "GET",
  //   dataType: "json",
  //   success: function(data) { callback(data); }
  // });

  //3  jQuery.get( "http://www.omdbapi.com/?t=" + movie, function(data) { callback(JSON.parse(data); } );

  //4
  jQuery.getJSON( "http://www.omdbapi.com/?t=" + movie, function(data) { callback(data); } );


}

function displayMovie(movie){
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}

$.prototype.cljq = function() {
  console.log(this);
  return this;
}

$(function() {
  $("<h1>").text("Find a Film!").appendTo( $("body") );

  var form = $("<form>").appendTo( $("body") );
  form.append( $("<label>").text("Movie Title:") )
  form.append($("<input>").attr({"name": "movieTitle", "type": "text"}).css({"width": "30em", "height": "1.2em"}) );

  form.append( $("<label>").text("Action:") );
  form.append( $("<select>").attr({"name": "typeOfAction"}).css({"width": "10em", "height": "1.2em"}) );
  $("select").append( $("<option>").val("none").html("Pick One:") )
  $("select").append( $("<option>").val("alertYear").html("Alert Me:") )
  $("select").append( $("<option>").val("displayMovie").html("Show Me:") )

  form.append( $("<button>").text("Submit") );

  function validate(e) {
    e.preventDefault();

    if ( $(this.movieTitle).val() === "" ) {
      alert("You need to enter a movie title");
    } else if ( $(this.typeOfAction).val() === "none" ) {
      alert("Select an action");
    } else {
      console.log( "Successfully submitted" );
      if ( $(this.typeOfAction).val() === "alertYear" ) {
        getMovie( this.movieTitle.value, alertYear );
      } else {
        getMovie( this.movieTitle.value, displayMovie );
      }
    }
  }

  // add event listener for submit event
  form.submit( validate );
});

