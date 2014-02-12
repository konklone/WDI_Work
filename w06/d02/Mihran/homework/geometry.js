//RECTANGLES//

function Rectangle(length, width) {
  this.length = length;
  this.width = width;
  this.isSquare = function(){
    return (this.length === this.width);
  }
  this.perimeter = function(){
    return (2 * (this.length + this.width));
  }
}

jim = new Rectangle(6,6)
john = new Rectangle(12,4)


//TRIANGLES//

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
  this.isEquilateral = function(){
    return (this.sideA === this.sideB && this.sideB === this.sideC)
  }
  this.isIsosceles = function(){
  return (this.sideA === this.sideB || this.sideB === this.sideC || this.sideA === this.sideC)
  } 
  this.area = function(){
    var s = (this.sideA + this.sideB + this.sideC)/2 
    return Math.sqrt(s*(s-this.sideA)*(s-this.sideB)*(s-this.sideC));
  }
  this.isObtuse = function(){
    array = [this.sideA, this.sideB, this.sideC];
    array.sort(function(a,b){return a-b});
    return ( (Math.pow(array[0],2) + Math.pow(array[1],2)) < Math.pow(array[2],2) );
  } 
}

//MTA//

(a2 + b2) < (c2)

