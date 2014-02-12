window.onload = function(){
  
  console.log("ready to draw");

  var elSetColor = document.getElementById("set-color");
  var colorField = document.getElementById("color-field");
  var brush = document.querySelector(".brush");


  var swatch1 = document.querySelector(".swatch1");
  var swatch2 = document.querySelector(".swatch2");
  var swatch3 = document.querySelector(".swatch3");
  var counter = 1;

  swatch1.addEventListener("click", function(){
    brush.style.background = swatch1.style.background;
  });

  swatch2.addEventListener("click", function(){
    brush.style.background = swatch2.style.background;
  });

  swatch3.addEventListener("click", function(){
    brush.style.background = swatch3.style.background;
  });

  var changeBrushHandler = function(){
    var value = colorField.value;
    brush.style.background = value;

    if(counter == 1){
      console.log(swatch1);
      swatch1.style.background = value;
    }
    if(counter == 2){
      swatch2.style.background = value;

    }
    if(counter == 3){
      swatch3.style.background = value;
      counter = 0;
    }

    counter++;
    console.log(counter);
  }

  elSetColor.addEventListener("click", function(){
    changeBrushHandler();
  });

  colorField.addEventListener("keypress", function(event){
    if (event.which == 13 || event.keyCode == 13) {
     changeBrushHandler();
    }
  });

  for(var i=0; i<8000; i++){
    var newDiv = document.createElement("div");
    newDiv.className = "square";
    
    newDiv.addEventListener("mouseover", function(){
      var color = document.querySelector(".brush").style.background;
      this.style.background = color;
    
    });

    document.body.appendChild(newDiv);

  }

}

