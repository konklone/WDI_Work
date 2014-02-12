window.onload = function() {

  button = document.querySelector('#set-color');
  input = document.querySelector('#color-field');
  box = document.querySelector('.brush');
  firstTime = true

  button.addEventListener('click', function() {
    box.style.backgroundColor = input.value;
    addSquare(16000, input.value);
    input.value = null;
  });

  input.addEventListener('keypress', function(e) {
    var key = e.which || e.keyCode;
    if (key == 13) {
      box.style.backgroundColor = input.value;
      addSquare(16000, input.value);
      input.value = null;
    }
  });

 

}

  function addSquare(num, color) {
    if (firstTime) {
      for( var i = 1; i <= num; i++) {
        var body = document.querySelector('body');
        var div = document.createElement('div');
        div.setAttribute('class', 'square');
        div.addEventListener('mouseover', function(e) {
          this.style.backgroundColor = color;
        });
        body.appendChild(div);
        firstTime = false;
      }
    }
    else {
      var divs = document.querySelectorAll('.square');
      for( var i = 1; i <= num; i++) {
        divs[i].addEventListener('mouseover', function() {
          this.style.backgroundColor = color;
        });
      }
    }
  }