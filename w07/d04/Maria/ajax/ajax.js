/*******************************XHR*****************************/

function getMovie(movie, callback) {
//   // set window. to make it accessible within console
//   window.httpRequest = new XMLHttpRequest();

//   // listens to Load event before doing this
//   httpRequest.addEventListener("load", function(){
//       callback(JSON.parse(httpRequest.responseText));
//   });

//   httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
//   httpRequest.send();
// }
jQuery.ajax({
    url: "http://www.omdbapi.com/?t=" + movie,
    type: "GET",
    dataType: "json",
    success: function(data){ actionFunction(data); }
  });

jQuery.getJSON( "http://www.omdbapi.com/?t=" + movie, function(data){ actionFunction(data); });

jQuery.get( "http://www.omdbapi.com/?t=" + movie, function(data){ actionFunction(JSON.parse(data)); });
}
function displayMovie(movie){
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}

/*************************************************************/
jQuery.prototype.cljq = function() { //extending JQUERY with our own method to be able to console.log easier.
  console.log(this);
  return this;
};

window.onload = function(){
  $("<h1>").text("Find a Film!").appendTo( $("body") );

  var form = $("<form>").appendTo( $("body") );

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
  form.append( $("<select>")
                .attr("name","action")
                .css({
                  "width":"10em",
                  "height":"2em",
                  "display":"block"
                    })
              );
  $("select").append( $("<option>").attr("value", "none").html("Pick One:") );
  $("select").append( $("<option>").attr("value","displayMovie").html("Show me!") );
  $("select").append( $("<option>").attr("value","alertYear").html("Alert me!") );
  $("select").val("none"); // sets select tags default value to "none"
  form.append( $("<button>")
                .text("Submit!")
                .css({
                  "height":"2em",
                  "width":"5em",
                  "margin-top":"10px"})
              );

  // function formSubmitFunction(e) {
  //   e.preventDefault();
  //   console.log("SUBMITTED");
  //   console.log($(this.movieTitle).val());
  //   console.log($(this.action).val());

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