// Rectangles
// Given the following a Rectangle object like the one below, write the following functions:



// function Rectangle(length, width) {
//   this.length = length;
//   this.width = width;
// }
// Create a few rectangles with different lengths and widths to test out your functions

function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

r1 = new Rectangle(3,3);
r2 = new Rectangle(3,4);
r3 = new Rectangle(10,1);

// isSquare - Returns whether the rectangle is a square or not

Rectangle.prototype.isSquare = function(){
  square = false;
  if (this.length == this.width) {
    square = true;
  }
  return square;
}

// area - Calculates the area of the rectangle
Rectangle.prototype.area = function(){
  area = this.length * this.width;
  return area;
}

// perimeter - Calculates the perimeter of the rectangle
Rectangle.prototype.perimeter = function(){
  perimeter = (this.length * 2) + (this.width * 2);
}

////////////////////////////

// Triangles
// Given the following a Triangle object like the one below, write the following functions:

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

// Create a few triangles with different side lengths to test out your functions

t1 = new Triangle( 3, 4, 5);
t2 = new Triangle( 3, 2, 5);
t3 = new Triangle( 3, 3, 3);

// isEquilateral - Returns whether the triangle is equilateral or not
Triangle.prototype.isEquilateral = function(){
  isEquilateral = false;
  if (this.sideA == this.sideB && this.sideA == this.sideC) {
    isEquilateral = true;
  }
  return isEquilateral;
}

// isIsosceles - Returns whether the triangle is isosceles or not
Triangle.prototype.isIsosceles = function() {
  isIsosceles = false;
  if (this.sideA == this.sideB || this.sideA == this.sideC || this.sideb == this.sideC) {
    isIsosceles = true;
  }
  return isIsosceles;
}

// area - Calculates the area of the Triangle
//TODO TEST THIS MORE....
Triangle.prototype.area = function() {
  s = (this.sideA + this.sideB + this.sideC) / 2;
  area = Math.sqrt(s * ((s-this.sideA)*(s-this.sideB)*(s-this.sideC)) );
  return area;
}

// isObtuse - Returns whether the triangle is obtuse or not
Triangle.prototype.isObtuse = function() {
  isObtuse = false;

  angle a

  angle b

  angle c 

}