function loopFactorial(n){
  var product = 1;
  for(var i = 1; i <= n; i++){
    product *= i;
  }
  return product;
}

// n === 1 is the base case, to make the function stop at 1.
function recFactorial(n){
  if (n === 1){
    return 1;
  }
  else {
    return n * recFactorial(n-1);
  }
}

console.log(loopFactorial(5));
console.log(recFactorial(5));


//  FIB STARTS HERE ###########################

function fib(n) {
  if (n===1) {
    return 1;
  }
    else if 
     (n === 0) {
      return 0;
    }
  else {
    return fib(n - 1) + fib(n-2)
  }
}

console.log(fib(5));

// 1, 2, 3, 5, 8, 13

// fib = fib(n - 1) + fib(n - 2)






