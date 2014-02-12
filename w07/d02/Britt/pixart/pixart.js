function setColor(elem){
  var colorField = document.getElementById("color-field");
  var newColor = colorField.value;
  elem.style.background = newColor;
}

function attachListener() {
  var colorDiv = document.querySelector("div.brush");
  var colorField = document.getElementById("color-field");
  var colorButton = document.getElementById("set-color");
  colorButton.addEventListener('click', function(){
    setColor(colorDiv);
  });

  colorField.addEventListener('keyup', function(event){
    if (event.keyCode == 13){
      setColor(colorDiv);
    };
  });
};

function create8000Divs(){
  var body = document.querySelector("body");
  for (i = 0; i < 8000; i++) {
    var div = document.createElement("div");
    div.classList.add("square");
    div.addEventListener('mouseover', function(){
      setColor(this)
    });
    body.appendChild(div);
  };
};

window.onload = function(){
  attachListener();
  create8000Divs();
};