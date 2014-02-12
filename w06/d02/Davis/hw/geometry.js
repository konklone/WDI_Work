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
    return (2 * this.length) + (2 * this.width);
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
    return this.sideA === this.sideB || this.sideB === this.sideC || this.sideA === this.sideC;
  }
  Triangle.prototype.area = function() {
    s = (this.sideA + this.sideB + this.sideC) / 2;
    under = s * (s - this.sideA) * (s - thisSideB) * (s - thisSideC);
    return Math.sqrt(under);
  }
  Triangle.prototype.isObtuse = function() {
    aSq = this.sideA * this.sideA;
    bSq = this.sideB * this.sideB;
    cSq = this.sideC * this.sideC;
    return (aSq + bSq) < cSq || (bSq + cSq) < aSq || (cSq + aSq) < bSq;
  }

  