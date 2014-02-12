window.onload = function() {
console.log("LOADED!");
}

function isSquare(length,width) {
  if (length === width)  
 	{
 		console.log("This here rectangle is a square!");
 	}
  else
  { 
 		console.log("This here rectangle is not a square!");
 	}
}

function rect_area(length,width) {
	console.log("The area of the rectangle is " + (length * width));
}

function perimeter(length,width) {
	console.log("The perimeter of the rectangle is " + ((2 * length) + (2 * width)));
}

function isEquilateral(sideA, sideB, sideC) {
	if (sideA === sideB && sideB === sideC) 
	{
		console.log("This triangle is equilateral!");
	}
	else 
	{
		console.log("This triangle isn't equilateral!");
	}
}

function isosceles(sideA, sideB, sideC) {
	if (sideA === sideB) 
	{
		console.log("This triangle is isoscles!");
	}
	else if (sideA === sideC) 
	{
		console.log("This triangle is isosceles!");
	}
	else if (sideB === sideC)
	{
		console.log("This triangle is isosceles!");
	}
	else 
	{
		console.log("This triangle is not isosceles!")
	}
}


