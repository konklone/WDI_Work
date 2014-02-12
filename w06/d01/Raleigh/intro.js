 window.onload = console.log("Loaded!");

   function add(val1, val2) {
      return (val1 + val2);
   }
   function sub(val1, val2) {
      return (val1 - val2);
   }
   function mul(val1, val2) {
      return (val1 * val2);
   }
   function div(val1, val2) {
      return (val1 / val2);
   }
   function mod(val1, val2) {
      return (val1 % val2);
   }
   function exp(base, power) {
      result = base;
      for (var i = 1; i < power; i++){
         result = (result * base);
      }
      return result;
   }
   function sqr(base) {
      return (base*base);
   }
   function srt(base) {
      return (Math.sqrt(base));
   }
   function hypotenuse(array1, array2) {
      deltax = array1[0] - array2[0];
      deltay = array1[1] - array2[1];

      return srt(deltax, deltay);
   }
   function quadratic(a, b, c) {
      delta = sqr(b) - (4 * a * c);
      if (delta < 0) {
         return null;
      }
      else if (delta === 0){
         return [(-b / (2 * a))];
      } 
      else {
         first = ((-b + delta) / (2 * a));
         second = ((-b - delta) / (2 * a));
         return [first, second];
      }
   }
   function factorial(val) {
      if(val <= 1) {
         return 1;
      }
      else {
         return (val * factorial(val - 1));
      }
   }
      // window.onload = replace;
      // function replace() {
      //    document.getElementById("heading").innerHTML = "Learning JS!";
      // }
      // function prompMe() {
      //    var answer = prompt("Lovin JS?", "");
      //    if (answer){
      //       alert("You said" + answer);
      //    }
      //    else {
      //       alert("No answer?");
      //    }
      // }