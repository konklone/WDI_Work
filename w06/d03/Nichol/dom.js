window.onload = function(){
  var answer = confirm("Are we ready?");
  console.log("they are ready: " + answer);

  var cheesy = document.getElementById("add-cheese");
  var l = document.getElementById("l");
  var r = document.getElementById("r");
  var u = document.getElementById("u");
  var d = document.getElementById("d");
  var b = document.getElementById("b");
  var s = document.getElementById("s");

  cheesy.onclick = function(event){
    alert("now we're ready!");
  };

  var buildBackground = function(){
    var element = document.getElementById("lightbox");
    element.style.backgroundImage = "url('http://placekitten.com/" + (Math.floor(Math.random() * (500 - 300)) + 300).toString() + "/" + (Math.floor(Math.random() * (500 - 300)) + 300).toString() + "')";
  };

  window.setInterval (buildBackground, 100000);

}

