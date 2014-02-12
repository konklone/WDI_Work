function getMovie(movie, actionFunction){

jQuery.get(
  "http://www.omdbapi.com/?t=" +movie, 
  function(data){actionFunction(data);}); 
}

function displayMovie(movie){
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}

$.prototype.cljq = function(){
  console.log(this); 
  return this; 
}


window.onload = function(){
  $("<h1>Find a Film!</h1>").appendTo( $("body")); 

  var form = $("<form>").appendTo($("body")); 
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
  form.append( $("<button>")
                .text("Submit!")
                .css({
                  "height":"2em",
                  "width":"5em",
                  "margin-top":"10px"})
              );

  $("select").append( $("<option>").attr("value", "none").html("Pick One:") ); 
  $("select").append( $("<option>").attr("value", "displayMovie").html("Show me!") ); 
  $("select").append( $("<option>").attr("value", "alertYear").html("Alert me!") ); 

function validate(e){
  event.preventDefault(); 

  console.log("SUBMITTED");
  console.log($(this.movieTitle).val()); 

  if ($(this.movieTitle).val() === ""){
    alert("Enter movie title!"); 
  } else if ($(this.action).val() === "none"){
    alert("You need to choose an action"); 
  } else {
    console.log("success with your submission!"); 
  }
} 
  $(form).submit(validate); 

}

// events exist in the browser (ie window.onload), submit jquery function takes 







