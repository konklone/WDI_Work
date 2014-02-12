function getMovie(movie, callback){
  // set window. to make it accessible within console
  window.httpRequest = new XMLHttpRequest();

  // listens to Load event before doing this
  httpRequest.addEventListener("load", function(){
      callback(JSON.parse(httpRequest.responseText));
  });

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();
}

function displayMovie(movie){
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}

function buildForm(){
  
  var form = $("<form>");

  form.append( $("<label>").text("Movie Title") );
  form.append( $("<input>")
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
  form.append( $("<button>")
                .text("Submit!")
                .css({
                  "height":"2em",
                  "width":"5em",
                  "margin-top":"10px"})
              );

  function formSubmitFunction(e){
    e.preventDefault();
    console.log("submitted");
    console.log( $(this.movieTitle).val() );

  }

  form.submit( formSubmitFunction );

  $('body').append(form);
}


window.onload = function(){
  console.log("working...");

  buildForm();

}







