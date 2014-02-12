function dollarsToPounds(usd) {
  var exchange_rate = 1.61;
  var gbp = usd / exchange_rate;
  console.log("$" + usd + " is " + "£" + gbp.toFixed(2));
};

function poundsToDollars(gbp) {
  var exchange_rate = 1.61;
  var usd = gbp * exchange_rate;
  console.log("£" + gbp + " is " + "$" + usd.toFixed(2));
}  