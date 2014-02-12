function changeColor() {
   var button = document.getElementById("set-color");
   var input = document.getElementById("color-field");
   var brush = document.querySelector("div.brush");

   button.addEventListener('click', function(){
      // brush.setAttribute("style", "background: " + input.value + ";");
      brush.style.background = input.value;
      input.value = "";
   });

   input.addEventListener('keypress', function(e) {
      var key = e.which || e.keyCode;
      if(key === 13) { // 13 is enter
         brush.style.background = input.value;
         input.value = "";
      }
   });

   for(i=0; i<=8000; i++) {
      var square = document.createElement("div");
      square.setAttribute("class", "square");
      // square.className = "square";

      square.addEventListener('mouseover', function(){
         this.style.background = brush.style.background;
      });
      document.body.appendChild(square);
   }
}


window.onload = changeColor;
