window.onload = function() {
  console.log("LOADED!");
};

function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare = function(length, width) {
  if (length === width){
    return "You have a Square, my friend!";
  }else {
    return "How very Rectangle of you!";
  }
};

Rectangle.prototype.perimeter = function(length, width) {
  var oneSide = length * 2;
  var twoSide = width *2;
  var peri = oneSide + twoSide;
  return peri;
};
// **** FROM MY CONSOLE ****
// bob = new Rectangle(12,3);
// Rectangle {length: 12, width: 3, isSquare: function, perimeter: function}
// bob
// Rectangle {length: 12, width: 3, isSquare: function, perimeter: function}
// bob.isSquare(12,3)
// "How very Rectangle of you!"
// bob.perimeter(12,3);
// 30
// bob.isSquare(60,60);
// "You have a Square, my friend!"
// ++++ End Rectangles


function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function(sideA, sideB, sideC) {
  if (sideA === sideB && sideA === sideC && sideB ===sideC){
    return "This is most certainly EQUILATERAL, BABY!!";
  }else{
    return "I'm so sorry, your sides are all effed up.";
  }
};

Triangle.prototype.isIsoceles = function(sideA, sideB, sideC) {
  if (sideA != sideB || sideA != sideC){
    return "Isoceles, you BE!";
  }else{
    return "Iso-dissapointed in you.";
  }
};


// *****THIS was my try
// Triangle.prototype.area = function(sideA, sideB, sideC) {
//   var heronsS = (sideA + sideB + sideC)/2;
//   var heroArea = Math.sqrt(heronsS(heronsS - sideA)(heronsS - sideB)(heronsS - sideC));

//   return heroArea;
// };

// ******THIS is what David suggested but it didn't work for me either.
// Triangle.prototype.area = function() {
//   var semiPerim = (this.sideA + this.sideB + this.sideC)/2;
//   return Math.sqrt(semiPerim * (semiPerim - this.sideA) * (semiPerim - this.sideB) * (semiPerim - this.sideC));
// };

Triangle.prototype.isObtuse = function(sideA, sideB, sideC) {
  //I spent all this time trying to do area correctly and its 9pm
  //so I don't have time to start MTA :(
};

//****** checking for EQUI in CONSOLE*******
// bob = new Triangle(30,30,30);
// Triangle {sideA: 30, sideB: 30, sideC: 30, isEquilateral: function, isIsoceles: function…}
// bob.isEquilateral;
// function (sideA, sideB, sideC) {
//   if (sideA === sideB && sideA === sideC && sideB ===sideC){
//     return "This is most certainly EQUILATERAL, BABY!!";
//   }else{
//     return "I'm so sorry, your sides are all effed up.";
//   }
// }
// bob.isEquilateral(30,30,30);
// "This is most certainly EQUILATERAL, BABY!!"

//******* checking for ISO **********
// bob = new Triangle();
// Triangle {sideA: undefined, sideB: undefined, sideC: undefined, isEquilateral: function, isIsoceles: function…}
// bob.isIsoceles(20,30,20);
// "Isoceles, you BE!"
// bob.isIsoceles(30,20,20);
// "Isoceles, you BE!"
// bob.isIsoceles(20,20,30);
// "Isoceles, you BE!"
// bob.isIsoceles(20,20,20);
// "Iso-dissapointed in you."

//******* checking for AREA ********
// not working:
// bob.area(3,4,5);
// TypeError: Property 'assMath' of object [object Object] is not a function






