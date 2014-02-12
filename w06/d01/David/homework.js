var exchange = 1.6142;
var usAmt = 80;
var poundAmt = 80;

function dollarsToPounds(dollarNumber){
  var poundValue = "£" + (dollarNumber/exchange).toFixed(2);
  console.log(poundValue);
}

function poundsToDollars(poundNumber){
  var dollarValue = "$" + (poundNumber*exchange).toFixed(2);
  console.log(dollarValue);
}