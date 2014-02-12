function loopFactorial(n){
  var product = 1;
  for(var i = 1; i <= n; i++){
    product *= i;
  }
  return product;
}

function recFactorial(n){
  if (n === 1){
    return 1;
  }
  else {
    return n * recFactorial(n-1);
  }
}

function recFib(n) {
  if (n === 0) {
    return 0;
  } else if (n === 1) {
    return 1;
  } else {
  return recFib(n-1) + recFib(n-2);
  }
}

// function sinFib(n){
//   var fibNums = [0, 1];
//   fibNums[n-1] = fibNums[n]
//   return fibNums[n];
// }

function loopFib (n) {
  var first = 0;
  var second = 1;
  var sum;
  if (n === 0) {
    return 0;
  } else if (n === 1) {
    return 1;
  } else {
    for(var i = 2; i <= n; i++) {
      sum = first + second;
      first = second;
      second = sum;
    }
    return sum;
  }
}

console.log(loopFactorial(5));
console.log(recFactorial(5));
console.log(recFib(12));
console.log(loopFib(12));
console.log(loopFib(0));