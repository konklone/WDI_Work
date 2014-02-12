window.onload = function() {
  console.log("Are we ready?");

  var cheesy = document.getElementById("add-cheese");

  cheesy.onclick = function(event) {
    alert("now we're ready!");
  };

  var buildBackground = function() {
    var e = document.getElementByID("lightbox");
    e.style.backgroundImage = "url(http://placekitten.com/500/500)";
  }

  setTimer( buildBackground, 400 );
};
