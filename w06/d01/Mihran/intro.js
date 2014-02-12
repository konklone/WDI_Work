window.onload = console.log("Loaded!!");

function hello( value1) {
  console.log("Hello " +value1 + "!" );
}


function add(val1, val2) {
  return(val1+val2);
}

function sub(val1,val2) {
  return(val1-val2);
}

function mul(val1, val2) {
  return(val1 * val2);
}


function div(val1, val2) {
  return(val1 / val2);
}

function exp(val1, val2) {
  if (val2 == 0){
    return 1;
  }
  result = val1;
  for (var i=1; i < val2; i++) {
    result = result * val1
  }
  return result;
}

function sqr(val) {
  return exp(val, 2) ;
}

function srt(val) {
  return Math.sqrt(val);
}

function hptn(a, b) {
  return srt( sqr(a) + sqr(b));
}

function quadratic(a,b,c){
  ;
}