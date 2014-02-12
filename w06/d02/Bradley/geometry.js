function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare = function() {
  return this.length === this.width;
}

Rectangle.prototype.area = function() {
  return this.length * this.width;
}

Rectangle.prototype.perimeter = function() {
  return (this.length * 2) + (this.width * 2);
}

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function() {
  return (this.sideA === this.sideB) && (this.sideB === this.sideC);
}

Triangle.prototype.isIsosceles = function() {
  return (this.sideA === this.sideB) || (this.sideB === this.sideC);
}

Triangle.prototype.area = function() {
  s = (this.sideA + this.sideB + this.sideC) / 2;
  return Math.sqrt(s * (s - this.sideA) * (s - this.sideB) * (s - this.sideC));
}

Triangle.prototype.isObtuse = function() {
  if (this.sideA > this.sideB && this.sideA > this.sideB) {
    return (Math.pow(this.sideB, 2) + Math.pow(this.sideC, 2)) < Math.pow(this.sideA, 2);
  } else if (this.sideB > this.sideA && this.sideB > this.sideC) {
    return (Math.pow(this.sideA, 2) + Math.pow(this.sideC, 2)) < Math.pow(this.sideB, 2);
  } else {
    return (Math.pow(this.sideA, 2) + Math.pow(this.sideB, 2)) < Math.pow(this.sideC, 2);
  }
}








