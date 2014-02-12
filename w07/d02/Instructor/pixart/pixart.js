window.onload = function() {
  var inputField = document.getElementById("color-field");
  var button = document.getElementById("set-color");
  var brush = document.querySelector(".brush");
  var color = "#1B4370";

  function setColor(){
    color = inputField.value;
    brush.style.background = color;
  }

  button.addEventListener('click', function(){
    setColor();
  });

  inputField.addEventListener('keypress', function(e){
    var key = e.which || e.keycode
    if (key === 13){
      setColor();
    }
  });

  for (var i = 0; i < 8000; i++){
    var box = document.createElement('div');
    box.className = "square";
    box.addEventListener("mouseover", function() {
      this.style.background = color;
    });
    document.body.appendChild(box);
  }
}