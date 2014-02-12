// Rectangle

function Rectangle(length, width){
  this.length = length;
  this.width = width; 
}

Rectangle.prototype.isSquare = function(){
  if (this.length == this.width){
    return true;
  } 
}
Rectangle.prototype.area = function(){
  return this.length * this.width;
}
Rectangle.prototype.perimeter = function(){
  return (2 * this.length + 2 * this.width);
}


// Triangle 

function Triangle(sideA, sideB, sideC){
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function(){
  if(this.SideA === this.sideB === this.sideC){
    return "Yep";
  }else{
    return "Not equilateral";
  }
}
Triangle.prototype.isIsosceles = function(){
  if ((this.sideA === this.sideB) || (this.sideB === this.sideC) || (this.sideA === this.sideC)){
    return "Iz Isosceles";
  }else{
    return "#grumpycat #no";
  }
}

Triangle.prototype.areaOf = function(){
  var s = ((.5) * (this.sideA + this.sideB + this.sideC));
  var heron = (( s - this.sideA ) * ( s - this.sideB ) * (s - this.sideC));
  var value = Math.sqrt( 
    (s * heron)
  );
  return value;
}

Triangle.prototype.isObtuse = function(){
  var sideArray = [];
  sideArray.push(this.sideA, this.sideB, this.sideC);
  var sorted = sideArray.sort();
    if (sorted[0]*sorted[0] + sorted[1]*sorted[1] < sorted[2]*sorted[2]){
      return "iz obtuse";
    }else{
      return "Sorry brah."
    }
}
