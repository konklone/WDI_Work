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

console.log(loopFactorial(5));
console.log(recFactorial(5));


function recFib(n){  
  //(n === 1 || n === 0) ? (return 1) : (return recFib(n-1) + recFib(n-2));

  if (n===1){
    return 1;
  }
  if (n===0){
    return 0;
  }
  else {
    return recFib(n-1) + recFib(n-2)
  }
}

function itFib(n){
  var fibs = [];
  var fibnum = 1;
  fibs[0] = 0;
  fibs[1] = 1;

  if (n === 0) {
    return 0;
  }
  
  if (n === 1) {
    return 1;
  }

  while (fibnum < n) {
    fibs[2] = fibs[0] + fibs[1];
    fibs[0] = fibs[1];
    fibs[1] = fibs[2];
    fibnum +=1;
  }

  return fibs[2];
}


function GCDRec(a, b){
  if (b = 0) {
    return a;
  }
  else {
    a = a%b;
    return GCDRec(b, a);
  }
}

//console.log(GCDRec(3, 9));


for(var i = 0; i <= 10; i++) {
  console.log(i, recFib(i));
}

for(var i = 0; i <= 10; i++) {
  console.log(i, itFib(i));
}
