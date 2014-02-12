window.onload = function(){

    console.log("Are you ready?")
    var cheesy = document.getElementById("add-cheese")
    cheesy.onclick = function(event){
      alert("now we're ready!");
    }

    var buildBackground = function(){

      var e = document.getElementById("lightbox");
      e.style.backgroundImage = "url('http://media.tumblr.com/tumblr_lr1cvk1j1j1qmgp60.gif')";
    }
    // buildBackground()
    setTimeout(buildBackground, 4000);

    var songs = document.getElementsByTagName("AUDIO");
}