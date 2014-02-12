window.onload = console.log("Hello World!");

var add = function(val1, val2) {
  return (val1 + val2);
}

var sub = function(val1, val2) {
  return (val1 - val2);
}

var mul = function(val1, val2) {
  return (val1 * val2);
}

var div = function(val1, val2) {
  return (val1 / val2);
}

var exp = function(base, power) {
  var num = base;
  while(power > 1) {
    num *= base;
    power -= 1;
  };
  return num;
};

var sqrt = function(num) {
  return Math.sqrt(num); 
};

var hypotenuse = function(arr1, arr2) {
  a = arr1[0] - arr2[0];
  b = arr1[1] - arr2[1];
  c = sqrt(exp(a, 2) + exp(b, 2));
  return c;
};

var quadratic = function(a, b, c){
  discriminant = sqrt(exp(b, 2) - (4 * a * c));
  if (discriminant < 0) {
    return null;
  }
  else {
    x1 = (-b + discriminant) / (2 * a);
    x2 = (-b - discriminant) / (2 * a);
    arr = [];
    arr.push(x1, x2);
    return arr;
  };

};

var factorial = function(val){
  if (val <= 1) {
    return 1;
  }
  else {
    return (val * factorial(val - 1));
  };
};
