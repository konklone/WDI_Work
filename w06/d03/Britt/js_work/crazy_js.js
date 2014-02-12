var songs;

window.onload = function(){
  console.log("Are we ready?");

  var cheesy = document.getElementById("add-cheese");
  cheesy.onclick = function(event){
    alert("now we're ready!");
  };

  var buildBackground = function(){
    var elem = document.getElementById("lightbox");

    elem.style.backgroundImage = "url('http://placekitten.com/" + (Math.floor(Math.random()*200) + 300) + "/" + (Math.floor(Math.random()*200) + 300) + "')";
    };

  songs = document.getElementsByTagName("AUDIO");

  setInterval( buildBackground, 2000 );
};