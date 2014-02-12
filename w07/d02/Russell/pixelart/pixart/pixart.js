window.onload = function() {
  var inputField = document.getElementById("color-field");
  var button = document.getElementById("set-color");
  var brush= document.querySelector(".brush");
  var square = document.querySelector(".square");
  var color = '#184370';
  

  function setColor(){
      color = inputField.value
      brush.style.background = color;
  }
  button.addEventListener('click', function(){
    var color = inputField.value 
    brush.style.background = color;
  });

  inputField.addEventListener('keypress', function(e){
    var key = e.which || e.keyCode;
    if (key === 13){
      setColor();
    }
      });
    for (var i = 0; i<8000; i++){
      var box = document.createElement('div');
      box.className = 'square';
      document.body.appendChild(box);
      box.addEventListener('mouseover', function(){
      this.style.background = color;
      })
    }

}


