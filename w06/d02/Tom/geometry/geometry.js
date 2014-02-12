function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

  Rectangle.prototype.isSquare = function() {
    if (this.length === this.width) {
      return "This is a square";
    } else {
        return "This is not a square";
    }
  }

  Rectangle.prototype.area = function() {
    return (this.length * this.width);
  }

  Rectangle.prototype.perimeter = function() {
    return ((this.length * 2) + (this.width * 2));
  }

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function() {
  if (this.sideA === this.sideB  === this.sideC) {
    return "This triangle is equilateral";
  } else {
    return "This triangle is not equilateral";
  }
}

