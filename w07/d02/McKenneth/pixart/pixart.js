window.onload = function(){
  artMe();
}

var button, colorSelector, brushCanvas, squares, body;

function setColor(){
  document.querySelector(".brush").style.background = colorSelector.value;
}

var artMe = function(){
  body = document.querySelector("body");
  button = document.querySelector("#set-color");
  colorSelector = document.querySelector("#color-field");
  button.addEventListener("click", function(){
    setColor();
  })
  colorSelector.addEventListener("keypress", function(e){
    var key = e.which || e.keycode
    if (key === 13){
     setColor();
    }
  
  });

  for(var i = 0; i < 100000; i++){
  squares = document.createElement("div");
  squares.className = "square";
  body.appendChild(squares);
  }
  var changeSquare = document.querySelectorAll(".square");

  for(var a = 0; a < changeSquare.length; a++){
    changeSquare[a].addEventListener("mouseover", function(){
      this.style.background = colorSelector.value;
    });
  }; 
  
}


