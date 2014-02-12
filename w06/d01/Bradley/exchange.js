exchange_rate = 1.6140;

var dollarsToPounds = function(d) {
  return "£" + (d / exchange_rate).toFixed(2);
};

var poundsToDollars = function(p) {
  return "$" + (p * exchange_rate).toFixed(2);
};



