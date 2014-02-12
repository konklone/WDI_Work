window.onload = console.log("Hello World");
    // 'window' is an Object, the key is 'onload', the value is 'console.log()'
    // console.log("Poopface");

    // var a = 10;

  function add(val1,val2){
    return parseInt(val1) + parseInt(val2);
    
  }
  function sub(val1,val2){
    return parseInt(val1) - parseInt(val2);
    
  }
  function mul(val1,val2){
    return parseInt(val1) * parseInt(val2);
    
  }
  function div(val1,val2){
    return parseInt(val1) / parseInt(val2);
    
  }
  function exp(val1,val2){
    var num = 1
    while (val2 > 0){
      var num = num * val1;
      val2--;
    }
    return num;
  }
  function sqr(val1){
    return parseInt(val1) * parseInt(val1);
  }
  function srt(val){
    return Math.sqrt(val)
  }

  function hypotenuse(point1,point2){
    var delt_x = point2[0]-point1[0];
    var delt_y = point2[1]-point1[1];
    return srt( sqr(delt_x) + sqr(delt_y) );
  }

  // function quadratic(a, b, c){

  //   delta = sqr(b) - 4*a*c;
  //   if (delta<0){
  //     return null;
  //   }else if (delta === 1){
  //     return [(-b/(2*a))];
  //   }else{
  //     first = ((-b + delta)/(2*a));
  //     second = ((-b - delta)/(2*a));
  //     return [first, second]
  //   }
  // }

  
