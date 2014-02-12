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

Rectangle.prototype.perimiter = function() {
  return 2 * (this.length + this.width);
}

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function() {
  if (this.sideA === this.sideB && this.sideB === this.sideC) {
    return true;
  } else {
    return false;
  }
}

Triangle.prototype.isIsosceles = function() {
  if (this.sideA === this.sideB && this.sideA != this.sideC) {
    return true;
  } else if (this.sideA === this.sideC && this.sideA != this.sideB ) {
    return true;
  } else if (this.sideB === this.sideC && this.sideB != this.sideA ) {
    return true;
  } else  {
    return false;
  }
}

Triangle.prototype.area = function() {
  var semiPerim = (this.sideA + this.sideB + this.sideC)/2
  return Math.sqrt(semiPerim * (semiPerim - this.sideA) * (semiPerim - this.sideB) * (semiPerim - this.sideC))
}

Triangle.prototype.isObtuse = function() {
  var sqrA = Math.pow(this.sideA, 2);
  var sqrB = Math.pow(this.sideB, 2);
  var sqrC = Math.pow(this.sideC, 2);

  if (sqrA + sqrB < sqrC) {
    return true;
  } else if (sqrB + sqrC < sqrA) {
    return true;
  } else if (sqrA + sqrC < sqrB) {
    return true;
  } else {
    return false;
  }
}





