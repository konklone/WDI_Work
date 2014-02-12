/***** RECTANGLE *****/
function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare = function() {
  if (this.length === this.width) {
    return true; 
  } else {
    return false; 
  }
}

Rectangle.prototype.area = function() {
return this.length * this.width;
}

Rectangle.prototype.perimeter = function() {
 return ((this.length * 2) + (this.width * 2));
}

/***** TRIANGLE *****/
function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function() {
  if ((this.sideA === this.sideB) && (this.sideB === this.sideC)) {
    return true; 
  } else {
    return false; 
  }
}

Triangle.prototype.isIsosceles = function() {
  if ((this.sideA === this.sideB) || (this.sideB == this.sideC) || (this.sideA) == (this.sideC)) {
    return true; 
  } else {
    return false;
  }
}

Triangle.prototype.area = function() {
  var s = (this.sideA + this.sideB + this.sideC);
  return Math.sqrt( s * ((s-this.sideA)*(s-this.sideB)*(s-this.sideC)) )
}

Triangle.prototype.isObtuse  = function() {

}





