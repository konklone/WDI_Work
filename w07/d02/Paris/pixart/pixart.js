window.onload = function() {
  // form input field
  var inputField = document.getElementById("color-field");
  // button
  var button = document.getElementById("set-color");
  // square color
  var brush = document.querySelector(".brush");
  var color = "#1B4370"

function setColor(){
  color = inputField.value;
  // set the background to the input value 
  brush.style.background = color;
}

// add event listener to button on click
button.addEventListener('click', function(){
  setColor();
});

// send value from pressing enter
inputField.addEventListener('keypress', function(e){
  var key = e.which || e.keycode
  // console.log(e)
  if (key === 13){
    setColor();
  }
});

// make 20 square divs
for (var i = 0; i < 8000; i++){
  var body = document.querySelector("body");
  var box = document.createElement("div");
  box.className = "square";
  // turn box green when you click on the box
  box.addEventListener('mouseover', function(){
    this.style.background = color;
  });
  document.body.appendChild(box);
}

}

// 

function Swatch() {
  this.colorList = [];
}

// BONUS
// Swatch.prototype.push = function (color){
//   this.colorList.push(color);
// }

// create three new divs called .swatch 










