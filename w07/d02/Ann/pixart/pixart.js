window.onload = function(){
  var buttonChangeColor = document.querySelector("#set-color"); 
  var inputField = document.querySelector("#color-field"); 
  var brush = document.querySelector(".brush")
  var square = document.querySelector(".square")


 function changeColor(){
    buttonChangeColor.addEventListener('click', function(e){
      var color = inputField.value; 
      brush.style.background = color; 
    }); 
  }

  function changeColorEnter(){
    inputField.addEventListener('keypress', function (e) {
    var key = e.which || e.keyCode;
    if (key === 13) { 
      var color = inputField.value; 
      brush.style.background = color; 
      inputField.value = null;}  
      }); 
    }; 

    function addBrushDivs(){
      for (i = 0; i < 8000; i++){
      var controlsList = document.querySelector("#controls"); 
      var box = document.createElement("div"); 
      box.className = ("square"); 
      box.addEventListener("mouseover", function(){
        this.style.background = inputField.value; 
      }); 
      document.body.appendChild(box);
      }; 
    }; 

    function turnSquareGreen(){
      var box = document.querySelector(".square")
      box.addEventListener('click', function(e){
        box.style.background = green; 
      }); 
    }; 

    function addColorSwatch(){


    }

  changeColor(); 
  changeColorEnter();
  addBrushDivs();  
  turnSquareGreen(); 

}

   