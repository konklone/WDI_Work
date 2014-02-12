<<<<<<< HEAD
=======

/**************************XHR**********************/
function getMovie(movie, actionFunction){

  /*jQuery.ajax({
    url: "http://www.omdbapi.com/?t=" + movie,
    type: "GET",
    dataType: "json",
    success: function(data){ actionFunction(data); }
  });*/

  jQuery.getJSON( "http://www.omdbapi.com/?t=" + movie, function(data){ actionFunction(data); });

  //jQuery.get( "http://www.omdbapi.com/?t=" + movie, function(data){ actionFunction(JSON.parse(data)); });
}

function displayMovie(movie){
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}
/******************************************************/

jQuery.prototype.cljq = function(){
  console.log(this);
  return this;
}

>>>>>>> 631a35e9bcd313d3aed18095ba4c041c1d2b6570
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
<<<<<<< HEAD
                    })
              );
  form.append( $("<label>").text("Action!") );
  form.append( $("<select>")
                .attr("name","action")
=======
                     })
              );
  form.append( $("<label>").text("Action!").css("margin-top","10px") );
  form.append( $("<select>")
                .attr("name","typeOfAction")
>>>>>>> 631a35e9bcd313d3aed18095ba4c041c1d2b6570
                .css({
                  "width":"10em",
                  "height":"2em",
                  "display":"block"
<<<<<<< HEAD
                    })
=======
                     })
>>>>>>> 631a35e9bcd313d3aed18095ba4c041c1d2b6570
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

<<<<<<< HEAD
  function formSubmitFunction(e) {
    e.preventDefault();
    console.log("SUBMITTED");
    console.log($(this.movieTitle).val());
    console.log($(this.action).val());
  }

  form.submit( formSubmitFunction );
=======
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

  $("form").submit( validate );
>>>>>>> 631a35e9bcd313d3aed18095ba4c041c1d2b6570
}

