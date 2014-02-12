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
  return 2 * this.length + 2 * this.width;
}

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function() {
  return this.sideA === this.sideB && this.sideB === this.sideC;
}

Triangle.prototype.isIsosceles = function() {
  return this.sideA === this.sideB || this.sideA === this.sideC || this.sideB === this.sideC;
}

Triangle.prototype.area = function() {
  var semiperim = (this.sideA + this.sideB + this.sideC)/2;
  var formula = semiperim * (semiperim - this.sideA) * (semiperim - this.sideB) * (semiperim - this.sideC)
  return Math.sqrt(formula);
}

Triangle.prototype.isObtuse = function() {
  sorted = [this.sideA, this.sideB, this.sideC].sort(function(a, b) {
    return a - b;
  });
  return (sorted[0]*sorted[0] + sorted[1]*sorted[1]) < (sorted[2]*sorted[2]);
}