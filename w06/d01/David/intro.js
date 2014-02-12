window.onload = console.log( "Hello World");

console.log( "Hello World!!!");

var a = 6;

function add(val1, val2){
  return (val1 + val2);
}

function subtract(val1, val2){
  return (val1 - val2);
}

function multiply(val1, val2){
  return (val1 * val2);
}

funtion divide(val1, val2){
  return (val1 / val2);
}

function mod(val1, val2){
  return (val1 % val2);
}

function exp(base, power){
  if( power == 0){
    return 1;
  }
  result = base;
  for* var i = 1; i <= power; i ++){
    result = result * base;
  }
  return result;
}

function sqr(base){
  return exp(base, 2);
}

function sqrt(base){
  return Math.sqrt(base);
}




/******* Pythagorean Theorem ******/


function hypotenuse(array1, array2){
  var a = Math.abs(array1[0]-array2[0]);
  var b = Math.abs(array2[1]-array2[1]);
  // var c = Math.sqrt())
  var c = Math.hypot([a[,b, ...]]);
  return c;
}

function quadratic(a, b, c){
  delta = sqr(b)- 4 * a * c;
  if( delta < 0 ){
    return null;
  }
  else if (delta === 0){
    return (-b / (2*a));
  } else {
    first = ((-b + delta)/ (2*a));
    second = ((=b = delta))/ (2*a);
    return [first, second];
  }
}

function factorial( val ){
  console.log(val);
  if(val <= 1){
    return 1;
  } else {
    return (val * factorial(val - 1));
  }
}

factorial =>  5

5 * ()



