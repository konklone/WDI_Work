// #### Rectangles

function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare = function() {
  if (this.length == this.width) {
  return  "This is a square.";
} else { 
  return "This is not a square."

}
};

Rectangle.prototype.area = function() {
  return this.length * this.width;
};

Rectangle.prototype.perimeter = function() {
  return (this.length * 2) + (this.width * 2);
};

var rec1 = new Rectangle(20, 10);
var rec2 = new Rectangle(20, 20);


// #### Triangles


function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function() {
  if ( this.sideA == this.sideB && this.sideA == this.sideC ) {
    return "This is an equilateral triangle.";
  } else { 
    return "This is not an equilateral triangle;"
  }
};

Triangle.prototype.isIsosceles = function() {
  if ( this.sideA == this.sideB && this.sideA != this.sideC ) {
    return "This is an isosceles triangle.";
  } else { 
    return "This is not an isosceles triangle;"
  }
};

//  these last two don't work real good. :O

Triangle.prototype.area = function() {
  s = ((this.sideA + this.sideB + this.sideC) / 2);
  (Math.sqrt(s((s-sideA)(s-sideB)(s-sideC))));
} 


Triangle.prototype.isObtuse = function() {
  length_array = [];
  length_array = [sideA, sideB, sideC];
  length_array.sort();
  if ( (length_array[2])**2 ) > ((length_array[1]) + (length_array[0]))**2) ) {
      return "This is an obtuse triangle.";
  } else { 
    return "This is not an obtuse triangle;"
  }
};


var tri1 = new Triangle(2, 2, 3);
var tri2 = new Triangle(2, 2, 2);




