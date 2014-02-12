window.onload = function() {
  console.log("Are we ready?");

  /* By placing in window.onload we make sure that the window has loaded before it does anything else */
  var cheesy = document.getElementById("add-cheese");
  cheesy.onclick = function(event){
    alert("now we're ready!");
  };

  var buildbackground = function(){
    var element = document.getElementById( "lightbox" );
    element.style.backgroundImage = "url('http://placekitten.com/" + (Math.floor(Math.random() * (500 - 300)) + 300).toString() + "/" + (Math.floor(Math.random() * (500 - 300)) + 300).toString() + "')";
  };

  setInterval(buildbackground, 2000);
  songs = document.getElementsByTagName("audio")
};

