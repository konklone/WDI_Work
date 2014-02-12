window.onload = function(){

  var color = "#1B4370"
  var inputField = document.getElementById("color-field");
  
  inputField.addEventListener('keypress', function (e) {
    var key = e.which || e.keyCode;
    if (key == 13) { changeColor();
    }
  });

  var button = document.getElementById("set-color");
  button.addEventListener('click', changeColor);

  var brush = document.querySelector(".brush");

  var controls = document.querySelector(".controls");

  function changeColor(){
    color = inputField.value;
    brush.style.background = color
    }  

  function createEightThousandSquares(){
    for (var i=0;i<8000;i++){
      box = document.createElement("div");
      box.className = "square";
      box.addEventListener("mouseover", function(){
        console.log(this);
        this.style.background = color;
      })
      document.body.appendChild(box);
    }
  }

  createEightThousandSquares();

}