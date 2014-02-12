function dollarsToPounds(dollar_amount) {
  var exchangeRate = 0.62;
  var pounds = dollar_amount * exchangeRate;
  Math.round(pounds * 100)/100;
  return dollar_amount + " is " + "£" + pounds;
}

function poundsToDollars(pound_amount) {
  var exchangeRate = 1.61;
  var dollars = pound_amount * exchangeRate;
  Math.round(dollars * 100)/100;
  return pound_amount + " is " + "£" + dollars;
}

