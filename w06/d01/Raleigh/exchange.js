

function dollarsToPounds(dollar){
   var rate = 1.6142

   num = (parseInt(dollar) / rate)
   result = (Math.round(num * 100) / 100)
   return "$" + dollar + " is £" + result;
}


function poundsToDollars(pound){
   var rate = 1.6142

   num = (parseInt(pound) * rate)
   result = (Math.round(num * 100) / 100)
   return "£" + pound + " is $" + result;
}
