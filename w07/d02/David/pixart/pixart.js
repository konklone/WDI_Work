function Art() {

}

var newGame = new Art();

Art.prototype.initialize = function() {
  this.valueWindow = document.getElementById("color-field");
  this.submitButton = document.getElementById("set-color");
  this.colorBox = document.querySelector("div.brush");
  this.form = document.getElementById("color-form");
  this.color = this.valueWindow.value;
  var self = this;
  this.form.addEventListener('submit', function(event) {
    event.preventDefault();
    console.log("click function");
    console.log(self.valueWindow.value);
    self.changeColor( self.valueWindow.value );
  });
  /******** Alternative method for submiting with return or click *********/
  // this.valueWindow.addEventListener('keypress' function(e){
  //   var key = e.which || e.keycode;
  //   if (key === 13){
  //     self.changeColor( self.valueWindow.value );
  //   }
  // });
}

Art.prototype.changeColor = function( colorStr ) {
 this.colorBox.style.background = colorStr;
 this.color = colorStr;
}

Art.prototype.createDiv = function( ) {
  // console.log("create div function");
  // console.log("chosen color" + this.color);
  var self = this;
  for (var i = 0; i < 20000; i++) {
    var body = document.querySelector("body");
    var divSquare = document.createElement("div");
    divSquare.className = "square";
    //must use this inside the listener because the divSquare variable changes every time through the loop
    divSquare.addEventListener('mouseover', function(color) {
      this.style.background = self.color;
    });
    body.appendChild(divSquare);
  }
}
  
window.onload = function() {
  console.log("loaded!!");
  newGame.initialize();
  newGame.createDiv();
}