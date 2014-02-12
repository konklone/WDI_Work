/****Geometry****/

// Rectangles
function Rectangle(length, width) {
  this.length = length;
  this.width = width;
};

Rectangle.prototype.isSquare = function() {
   if(this.length === this.width){
      return true;
   } else {
      return false;
   }
};

Rectangle.prototype.perimeter = function() {
   return (this.length)*2 + (this.width)*2;
};

Rectangle.prototype.area = function() {
   return this.length * this.width;
};

// Triangles
function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
};

Triangle.prototype.isEquilateral = function() {
   if(this.sideA === this.sideB && this.sideB === this.sideC){
      return true;
   } else {
      return false;
   }
};

Triangle.prototype.isIsosceles = function() {
   if(this.sideA === this.sideB || this.sideA === this.sideC || this.sideB === this.sideC){
      return true;
   } else {
      return false;
   }
};

function sortNumber(a,b) {
    return a - b;
}

// var numArray = [140000, 104, 99];
// numArray.sort(sortNumber);
// alert(numArray[0] + ", " + numArray[numArray.length - 1]);

// Triangle.prototype.isObtuse = function() {
//    function sortNums(a,b) {
//     return a - b;
// }
//    var side = [this.sideA, this.sideB, this.sideC].sort();
//    if (((side[0])*(side[0]) + (side[1])*(side[1])) < ((side[2])*(side[2]))){
//       return true;
//    } else {
//       return false;
//    }
// };

Triangle.prototype.area = function() {
   var s = ((this.sideA + this.sideB + this.sideC)/2);
   return Math.sqrt(s * (s - this.sideA)*(s - this.sideB)*(s - this.sideC));
};


// * isObtuse - [Returns whether the triangle is obtuse or not](http://en.wikipedia.org/wiki/Isosceles_triangle#By_internal_angles)
