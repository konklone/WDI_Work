window.onload = function(){
  var setColorButton = document.getElementById('set-color');
  var colorField = document.getElementById("color-field");
  var brushBox = document.querySelector(".brush");
  var colorSwatch = new Array;
  
  setColorButton.addEventListener('click', function(e){
    e.preventDefault();
    changeColor(brushBox,colorField.value);
    alert(colorSwatch)
    colorField.value = null;
  });
  
  function changeColor(element, color){
    element.style.background = color;
  }

  function moarSquares(){
    for(i = 0; i < 20001; i ++) {
      var div = window.document.createElement("div");
      div.className = "square";
      var squareBox = document.querySelector(".controls");
      squareBox.appendChild(div);
      div.addEventListener('mouseover', function(e){
        e.preventDefault();
        changeColor(this, colorField.value);
      });
    }
  }

  function addToSwatch(){
    colorSwatch.push(colorField.value);
  }
  moarSquares();
}