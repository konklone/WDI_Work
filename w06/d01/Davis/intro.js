// window and console: object defined by browser
// console.log is puts
window.onload = console.log( "Hello World!" );

function add( val1, val2 ) {
  return val1 + val2;
}

function subtract(val1,val2) {
  return val1 - val2;
}

function multiply(val1,val2) {
  return val1 * val2;
}

function divide(val1,val2) {
  return val1 / val2;
}

function mod(val1,val2) {
  return val1 % val2;
}

// function exp(base, power) {
//   if( val2 == 0 ) {
//     return val1;
//   }

//   result = base;
//   for(val i = 1; i < power; i++) {
//     result = result * base
//   };

//   return result;
// }

function srt( val ) {
  var i = 0;

  // for(var i=0; i <= val; i++) {
  //   if(val / i === i) {
  //     return i;
  //   };
  // };
  while(i <= val) {
    if( Math.round(val / i) === Math.round(i) ) {
      return i;
    };

    i = i + 0.1
  };
}

function hypotenuse( arr1, arr2 ) {

}

function hello(){
  return "Hello world!";
}


// pass in blocks, usingimplicit returns
function hello( val, quoter ) {
  return "Hello " + quoter( val ) + "!";
}
function x( arg ) {
  return "'" + arg + "'";
}
function y( arg ) {
  return "+" + arg + "+";
}

