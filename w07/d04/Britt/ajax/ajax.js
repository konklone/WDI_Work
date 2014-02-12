
/************************ MOVIES ****************************/

function getMovie(movie, actionFunction){
  // $.ajax({
  //   url: "http://www.omdbapi.com/?t=" + movie,
  //   type: "GET",
  //   success: function(data){ actionFunction(JSON.parse(data)); }
  // });

  // $.get({
  //   url: "http://www.omdbapi.com/?t=" + movie,
  //   dataType: "json",
  //   success: function(data){ actionFunction(data); }
  // });

  $.getJSON( "http://www.omdbapi.com/?t=" + movie, function(data){actionFunction(data)} );
}

function displayMovie(movie){
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}

/**************** EXTEND JQUERY OBJECT ********************/

jQuery.fn.cljq = function() {
  console.log(this);
  return this;
}

/************************ FORM ****************************/

function buildForm(){
  h1 = $("<h1>").text("Find a Film!").appendTo($("body"))
  
  form = $("<form>").appendTo($("body"));

  $("<label>").text("Movie Title")
              .appendTo(form);
  $("<input>").attr({"type":"text", "name":"movieTitle", "placeholder":"Avatar"})
              .css({
                "width":"30em",
                "height":"1.2em",
                "display":"block",
                "background-color":"lightblue"
              })
              .appendTo(form);
  $("<label>").text("Action")
              .appendTo(form);
  var select = $("<select>").attr({"name": "typeOfAction"})
               .css({
                 "width":"10em",
                 "height":"2em",
                 "display":"block"
               })
               .appendTo(form);
  $("<option>").attr({"value": "none"}).text("Pick One:").appendTo(select);
  $("<option>").attr({"value": "displayMovie"}).text("Show me!").appendTo(select);
  $("<option>").attr({"value": "alertYear"}).text("Alert me!").appendTo(select);
  select.val("none");
 
  $("<button>").attr({"type": "submit"})
               .text("Submit")
               .css({
                "height":"2em",
                "width":"5em",
                "margin-top":"10px"
               })
               .appendTo(form);

  function validate(ev) {
    ev.preventDefault();

    if ( $(this.movieTitle).val() === "" ){
      alert("You need to enter a movie title, fool.");
    } else if ( $(this.typeOfAction).val() === "none" ){
      alert("You need to choose an action.");
    } else {
      console.log("successfully submitted.");
    };

    if ( $(this.typeOfAction).val() === "alertYear" ){
      getMovie( $(this.movieTitle).val(), alertYear )
    } else {
      getMovie( $(this.movieTitle).val(), displayMovie )
    }
  }

  form.submit( validate );
}

/********************** ON LOAD **************************/

$( function(){
  console.log("loaded.")
  buildForm();
} );

