var gbp = 100;
var dollar = 100;

function dollarsToPounds(usd){
  var pounds = (usd * 1.6141).toFixed(2);
  return "$" + usd + " is £" + pounds;
}

function poundsToDollars(gbp){
  var dollars = (gbp / 1.6141).toFixed(2);
  return "£" + gbp + " is $" + dollars;
}
