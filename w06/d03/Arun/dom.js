var whichSong = 0;
var songs;
var lightbox;

// define the buildKitPic function to get a new, random kit pic for our background
function buildKitPic(){
  el = document.getElementById('lightbox');

  w = Math.round(Math.random() * (el.offsetWidth/2) + (el.offsetWidth/2));
  h = Math.round(Math.random() * (el.offsetHeight/2) + (el.offsetHeight/2));
  el.style.backgroundImage = "url('http://placekitten.com/" + w + "/" + h + "')";

  console.log('buildkitpic: ' + w + 'x' + h)
}

// define a function that loops the songs, back to back
function loopSong(){
  whichSong = (whichSong == 0 ? 1 : 0);
  songs[whichSong].play();
}

window.onload = function(){

    // place the text in the div (a header tag sans any text right now)
    var cheesy = document.getElementById('cheesy');
    cheesy.style.left = "0px";
    cheesy.style.top = "20px";

    // declare the function that updates the text
    function addDatCheese(){
      document.getElementById('cheesy').innerHTML = document.getElementById('cheese-text').value;
    }

    //add onClick events to all of the buttons
    cheeseButton = document.getElementById('add-cheese');
    cheeseButton.addEventListener('click', addDatCheese); // update text!
    document.getElementById('l').addEventListener('click', function() {
      console.log( "left" );
      cheesy.style.left = (parseInt(cheesy.style.left) - 10).toString() + "px";
    });
    document.getElementById('r').addEventListener('click', function() {
        console.log( "right" );
        cheesy.style.left = (parseInt(cheesy.style.left) + 10).toString() + "px";
    });
    document.getElementById('u').addEventListener('click', function() {
      console.log( "up" );
      cheesy.style.top = (parseInt(cheesy.style.top) - 10).toString() + "px";
    });
    document.getElementById('d').addEventListener('click', function() {
        console.log( "down" );
        cheesy.style.top = (parseInt(cheesy.style.top) + 10).toString() + "px";
    });
    document.getElementById('b').addEventListener('click', function() {
      console.log( "big" );
      var size = window.getComputedStyle(cheesy).getPropertyValue("font-size");
      cheesy.style.fontSize = (parseInt(size) + 1).toString() + "px";
    });
    document.getElementById('s').addEventListener('click', function() {
      console.log( "small" );
      var size = window.getComputedStyle(cheesy).getPropertyValue("font-size");
      cheesy.style.fontSize = (parseInt(size) - 1).toString() + "px";
    });

    //find any audio tags and attempt to play upon load
    songs = document.getElementsByTagName('audio');
    songs[0].addEventListener('ended', loopSong);
    songs[1].addEventListener('ended', loopSong);
    loopSong();

    //call the function to reset the background every 4 seconds
    buildKitPic();
    setInterval( buildKitPic, 4000 );
}

