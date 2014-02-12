
var exRate = 1.614;

function dollarsToPounds(dollar){
    var roundedInt = (dollar * exRate).toFixed(2);
    console.log( "$" + dollar + " is £" + roundedInt + ".");
}



function poundsToDollars(pound){
  var roundInt = (pound / exRate).toFixed(2);
  console.log("£" + pound + " is $" + roundInt + ".");
}