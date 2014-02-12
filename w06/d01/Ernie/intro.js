function add (x,y){
return x + y 
};

function subtract (x,y){
  return x - y 
};

function multiply (x,y){
  return x * y 
};

function divide (x,y){
  return x / y 
};

function exp (x,y){
  if (y == 0) {
    return 1;
  }
  result = x;
  for (var i = 1; i < y.length; i++) {
    result = result * x
  };
  return result;
};

function mod (x,y){
  return x % y 
};

function sqr(x){
  return exp (x - y) 
};

function srt (val){
  return Math.sqrt(val); 
};

function hypotonuse(a, b, c) {
    var result = Math.sqrt((a * a) + (b * b));

    if (a && b && c) return result === c;
    else if (a && b && !c) return result;
    else if (a && !b && c) return Math.sqrt(c / (a * a));
    else if (!a && b && c) return Math.sqrt(c / (b * b));
}


function factorial(val){
  if (val <= 1) {
    return 1;
  } else {
    return(val * factorial(val - 1))
  }
};