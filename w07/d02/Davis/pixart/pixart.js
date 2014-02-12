window.onload = function() {
  var button = document.getElementById("set-color");
  var userInput = document.querySelector("input#color-field");
  var div = document.querySelector("div.brush");

  function setColor() {
    div.style.backgroundColor = userInput.value;
    // userInput.value = "";
  }

  button.addEventListener('click', function(e) {
    e.preventDefault();
    setColor();
  })

  userInput.addEventListener('keypress', function(e) {
    var key = e.which || e.keycode;
    // keycode 13 is Enter key
    if (key===13) {
      setColor();
    }
  });

  for (var i=0; i<8000; i++) {
    var box = document.createElement("div");
    box.className = "square";

    box.addEventListener('mouseover', function() {
      this.style.backgroundColor = userInput.value;
    })

    document.querySelector("body").appendChild(box);
  }

  var reloadButton = document.querySelector("#reload");
  reloadButton.addEventListener('click', function() {
    location.reload();
  })
}
