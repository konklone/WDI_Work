function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare=function() {
  if (this.length === this.width)
  return "This rectangle is a square";
  else 
   return "This rectangle is not a square";

}

Rectangle.prototype.area=function() {
  return "This rectangle area is " + this.length * this.width; 
}

Rectangle.prototype.perimeter=function() {
  return this.length + this.length + this.width + this.width;
}




function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral=function() {
  if (this.sideA === this.sideB && this.sideB === this.sideC)
    return "This triangle is equilateral";
  else 
    return "This triangle is not equilateral";
}

Triangle.prototype.isIsosceles=function() {
  if (this.sideA === this.sideB || this.sideB === this.sideC || this.sideA === this.sideC)
    return "This triangle is isosceles"
  else
    return "This triangle is not isosceles"
}


Triangle.prototype.area=function() {
  var semiper = (this.sideA + this.sideB + this.sideC)/2;
  return Math.sqrt(semiper * (semiper - this.sideA) * (semiper - this.sideB) * (semiper - this.sideC))
}

Triangle.prototype.isObtuse=function() {
  if (this.sideC > (this.sideA && this.sideB) && (this.sideC * this.sideC) > ((this.sideA * this.sideA) + (this.sideB * this.sideB)))
    return "This triangle is obtuse"
  else
    return "This triangle is not obtuse"

}





