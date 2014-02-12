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

function fibo(num) {
  var f = [];
  for (var i = 0; i < num; i++) {
  f.push((i < 2) ? i : f[i-1] + f[i-2]);
}
  return f;
}

// single recursion (calling itself twice)
function recFib(n){
  if(n === 0){
    return 0;
  }
  else if (n === 1){
    return 1;
  }
  else{
    return recFib(n - 1) + recFib(n - 2);//here calling iself
  }
}

function loopFib(n){
  var first = 0;
  var second = 1;
  var sum;
  for(var )
}

console.log(loopFactorial(5));
console.log(recFactorial(5));
console.log(fibo(5));
console.log(recFib(10));
