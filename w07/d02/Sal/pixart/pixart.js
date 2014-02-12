function changeColor() {

}

window.onload = function() {
  //GET ELEMENTS TO 
  var inputField = document.getElementById('color-field');
  var brush = document.querySelector('div.brush');
  var button = document.getElementById('set-color');
  var box = document.querySelector('square')
  var color = '#1B4370';

  // TO ENCAPSULATE THE SET COLOR FUNCTION
  function setColor() {
    color = inputField.value; 
    brush.style.background = color; 
  }

  // ADD EVENT LISTENER TO BUTTON
  button.addEventListener('click', function(){
      setColor();
  });

  // ADD EVENT LISTENER TO FORM TO SUBMIT UPON ENTER
  inputField.addEventListener("keypress", function(e) {
    var key = e.which || e.keycode
    }
  });


  //CREATE FOR LOOP TO CREATE 20 SQUARE AND ADD LISTENERS
  for(var i = 0; i < 15000; i++){
    var box = document.createElement('div');
    box.className = 'square';
    box.addEventListener("mouseover", function(){
     this.style.background = color;
    });
    document.body.appendChild(box);
  };
}