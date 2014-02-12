//* RECTANGLES *// 

function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare = function() {
  if (this.length === this.width){
    return true;
  }else {
    return false;
  }
}

Rectangle.prototype.area = function() {
  return (this.length * this.width);
}

Rectangle.prototype.perimeter = function() {
  return ((this.length * 2) + (this.width) * 2);
}

//* TRIANGLES *// 

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function() {
  if (this.sideA === this.sideB && this.sideA === this.sideC){
    return true;
  } else {
    return false;
  }
}

Triangle.prototype.isIsosceles = function() {
  var sides = [this.sideA, this.sideB, this.sideC];
  var temp = {};
    for (var i = 0; i < sides.length; i++)
        temp[sides[i]] = true;
    var r = [];
    for (var k in temp)
        r.push(k);
    if (r.length <= 2) {
      return true;
    } else {
      return false;
    } 
  }


Triangle.prototype.isScalene = function() {
  if (this.sideA != this.sideB && this.sideA != this.sideC && this.sideB != this.sideC){
    return true;
  } else {
    return false;
  }
}

Triangle.prototype.area = function() {
  var s = (this.sideA + this.sideB + this.sideC)/2;
  var h = s * (s - this.sideA) * (s - this.sideB) * (s - this.sideC)
  return Math.sqrt(h);
}

Triangle.prototype.isObtuse = function() {
  sorted = [this.sideA, this.sideB, this.sideC].sort(function(a, b) {
    return a - b;
  });
  return (sorted[0]*sorted[0] + sorted[1]*sorted[1]) < (sorted[2]*sorted[2]);
}
