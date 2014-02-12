window.onload = function(){
var inputField = document.getElementById("color-field");
var button = document.getElementById("set-color");
var brush = document.querySelector("div.brush");
var color;

function setColor(){
  color = inputField.value;
  brush.style.background = color;
}

button.addEventListener("click", function() {
  setColor();
  });

inputField.addEventListener("keypress", function(e){
  var key = e.which|| e.keyCode;
   if(key === 13){
   setColor();
   }
 });
  
 // for (var i = 0; i < 20; i++){
 //  var twentyDivs = document.createElement('div');
 //  twentyDivs.className = "square";
 //  twentyDivs.addEventListener("click", function(){
 //  this.style.background = color;
 //  });
 //  document.body.appendChild(twentyDivs);
 // }

 for (var i = 0; i<8000; i++){
  var box = document.createElement("div");
  box.className = "square";
  box.addEventListener("mouseover", function() {
    this.style.background = color;
  });
  document.body.appendChild(box);
 }
};





// var enterInputField = document.getElementById("set-color");
//   enterInputField.addEventListener("keypress", function(event){
//     if (event.which == 13 || event.keyCode == 13) {
//     }
//   });