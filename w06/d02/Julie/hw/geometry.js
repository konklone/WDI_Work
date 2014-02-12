// Do the following in a file called `geometry.js`

// #### Rectangles

// Given the following a `Rectangle` object like the one below, write the following functions:

// * isSquare - Returns whether the rectangle is a square or not
// * area - Calculates the area of the rectangle
// * perimeter - Calculates the perimeter of the rectangle

// ```
function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

// sqr = new Rectangle(5, 5);


Rectangle.prototype.isSquare = function() {
  if(this.length === this.width){
    return true;
  }
  else {
    return false;
    }
}

Rectangle.prototype.area = function() {
  return this.length * this.width;
}

Rectangle.prototype.perimeter = function() {
  return (this.length * 2) + (this.width * 2);
}



// ```
// Create a few rectangles with different lengths and widths to test out your functions

// #### Triangles

// Given the following a `Triangle` object like the one below, write the following functions:

// * isEquilateral - [Returns whether the triangle is equilateral or not](http://en.wikipedia.org/wiki/Equilateral_triangle)
// * isIsosceles - [Returns whether the triangle is isosceles or not](http://en.wikipedia.org/wiki/Isosceles_triangle#By_relative_lengths_of_sides)
// * area - [Calculates the area of the Triangle](http://en.wikipedia.org/wiki/Heron%27s_formula)
// * isObtuse - [Returns whether the triangle is obtuse or not](http://en.wikipedia.org/wiki/Isosceles_triangle#By_internal_angles)

// ```
function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}



Triangle.prototype.isEquilateral = function() {
  if(this.sideA === this.sideB && this.sideB === this.sideC){
    return true;
  }
  else {
    return false;
  }
}


Triangle.prototype.isIsosceles = function() {
  if(this.sideA === this.sideB || this.sideA === this.sideC || this.sideB === this.sideC){
    return true;
  }
    else {
      return false;
    }
}

Triangle.prototype.area = function() {
  var s = ( ( this.sideA + this.sideB + this.sideC )/2 ); 
    return Math.sqrt( s * (s - this.sideA) * (s - this.sideB) * (s - this.sideC) );
}

Triangle.prototype.isObtuse = function() {
  var sideArray = [ this.sideA, this.sideB, this.sideC ];
  sideArray.sort( function(a,b) {return a-b} ); 
  return (Math.pow( sideArray[0], 2 ) + Math.pow( sideArray[1],2 )) < Math.pow(sideArray[2],2); 
}

// ```
// Create a few triangles with different side lengths to test out your functions