// Store the exchange rate in a variable
var dollarsToPoundsRate = 0.66;

// Store a dollar amount into a variable
var dollars = 30;

// Convert it to pounds and output "$NN is £NN"
var dollarsInPounds = (dollars * dollarsToPoundsRate).toFixed(2);
console.log("$"+dollars+" is £"+dollarsInPounds);

// Now store a pound amount into a variable
var pounds = 50;

// Convert it to dollar and output "£NN is $NN."
var poundsInDollars = (pounds / dollarsToPoundsRate).toFixed(2);
console.log("£"+pounds+" is $"+poundsInDollars);

// Writing a function to convert dollars to pounds
function dollarsToPounds(dollars) {
  var dollars = parseInt(dollars);
  var dollarsInPounds = (dollars * dollarsToPoundsRate).toFixed(2);
  console.log("$"+dollars+" is £"+dollarsInPounds);
}

// Writing a function to convert pounds to dollars
function poundsToDollars(pounds) {
  var pounds = parseInt(pounds);
  var poundsInDollars = (pounds / dollarsToPoundsRate).toFixed(2);
  console.log("£"+pounds+" is $"+poundsInDollars);
}