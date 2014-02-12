$(function() {

 $("<h1>Find a Film!</h1>").appendTo( $("body"));
  var form =  $("<form></form>").appendTo( $("body") );

  jQuery.prototype.cljq = function() {
    console.log(this);
    return this;
  }

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
                .attr("name","action")
                .css({
                  "width":"10em",
                  "height":"2em",
                  "display":"block"
                    })
              );

  $("select").append($("<option>").attr("value","none").html("Pick One:") );
  $("select").append($("<option>").attr("value","displayMovie").html("Show me!") );
  $("select").append($("<option>").attr("value","alertYear").html("Alert me!") );
  $("select").val("none"); // sets select tags default value to none"

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

  form.submit(validate);
     if($(this.typeOfAction).val() === "alertYear") {
      getMovie( $(this.movieTitle).val(), displayMovie );
      getMovie( $(this.movieTitle).val(), alertYear );
    }

});


function getMovie(movie, actionFunction){
  jQuery.ajax({
    url: "http://www.omdbapi.com/?t=" + movie,
    type: "GET",
    dataType: "json",
    success: function(data){ actionFunction(data); }
  });

function displayMovie(movie){
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}

window.onload = function(){

}







