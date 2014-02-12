var exchange = 1.6141

function usd_to_gbp( dollars ){
  var pounds = (dollars / exchange).toFixed(2);
  return "$" + dollars + " is £" + pounds;
};

function gbp_to_usd( pounds ){
  var dollars = (pounds * exchange).toFixed(2);
  return "£" + pounds + " is $" + dollars;
}