window.onload = console.log("hello world!");

/* add(val1, val2);
* sub(val1, val2);
* mul(val1, val2);
* div(val1, val2);
* mod(val1, val2);
* exp(base, power);
* sqr(base);
* sqrt(base);
*/

function add(val1, val2){
  return (val1 + val2);
}

function sub(val1, val2){
  return (val2 - val1);
}

function mul(val1, val2){
  return (val1 * val2);
}

function div(val1, val2){
  return (val1 / val2);
}

function mod( val1, val2 ){
  return (val1 % val2);
}

function exp(base, power){
  if (val2 == 0){
    return 1;
  }
  result = val1;
  for (var i = 1; i < val2; i++){
    result = result * val1
  }
}

function sqr( val ){
  return exp( val, 2);
}

function srt( val ){
  return Math.sqrt( val );
}



function hypotenuse( arr1, arr2 ){
  a = arr1{0} - arr2{0};
  b = arr1{1} - arr2{1};
  return srt(sqr(arr1) + sqr(arr2));
}

  return null;
}

function quadratic( a, b, c ){
  delta = sqr(b) - 4 * a * c;

  if(delta < 0){
    return null;
  }
  else if (delta === 1){
    return [(-b/ (2 * a))];
  }else {
    first = ((-b + delta / 2 * a ));
    second = ((-b -delta) / (2 * a));
    return [first, second];
  } 
  }
  return null; 
}

// function factorial( val ){
//   console.log( val );
//   if (val <= 1) {
//     return 1;
//   } else {
//     console.log("?" +)
//     return (val * factorial(val))
//   }
// }

