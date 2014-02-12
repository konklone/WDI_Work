function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare = function(length,width) {
  if (this.length & this.width === this.length & this.width ) {
    return "You Have a Square!";
  }else{
    return "You Have a Rectangle!";
  }
};

Rectangle.prototype.area = function (shape) {
  return this.length * this.width;
}

Rectangle.prototype.perimeter = function (shape) {
  return this.length * 2 + this.width * 2;
}

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function (triangle) {
  if (this.sideA && this.sideB && this.sideC === this.sideA && this.sideB && this.sideC) {
      return "Your Triangle is Equal on all sides"
  } else{
    return "Your Triangle is not Equal on all sides"
  };
}

Triangle.prototype.isIsosceles = function (triangle) {
 if (Math.pow(this.sideA,2) + Math.pow(this.sideB,2) === Math.pow(this.sideC,2)) {
  return " Your Triangle is an Isosceles!";
 } else{
  return " Your Triangle is NOT an Isosceles!";
 }
};
//s = (a + b + c) / 2 area = sqrt(s * (s - a) * (s - b) * (s - c))
Triangle.prototype.area = function (triangle) {
  sideA = prompt("please enter base");
  sideB = prompt("please enter height");
  s = (sideA * sideB) / 2
  return s
};


Triangle.prototype.isObtuse = function (triangle) {
// if one of the angles are greater than 90 obtuse == true
//If a^2 + b^2 < c^2, then the triangle is obtuse 
if (Math.pow(this.sideA,2) + Math.pow(this.sideB,2) < Math.pow(this.sideC,2)) {
  return "Your Triangle is obtuse!"
} else{
  return "Your Triangle is NOT obtuse!"
};
}