// store the Exchange Rate into a variable
var conversionRate = 0.63;

// store a Dollar amount into a variable

var dollarAmount = 50;

// Convert it to pounds and output "$NN is £NN"

var dToP = (dollarAmount * conversionRate).toFixed(2);
console.log("$" + dollarAmount "equals £" + dToP);

// Now store a pound amount into a variable

var poundAmount = 75;

// Convert it to dollar and output "£NN is $NN."

var PtoD = (poundAmount / conversionRate).toFixed(2);
console.log("£" poundAmount "equals $" + PtoD);

// Writing a function to convert dollars to pounds
function dToP(dollarAmount) {
var dollars = parseInt(dollarAmount);
var dToP = (dollars * conversionRate).toFixed(2));
console.log("$" + dollarAmount "equals £" + dToP);
}

// Writing a function to convert dollars to pounds
function pToD(poundAmount){
  var pounds = parseInt(poundAmount);
  var pToD = (pounds / conversionRate.toFixed(2));
  console.log("£" + poundAmount "equals $" + ptoD);
}

