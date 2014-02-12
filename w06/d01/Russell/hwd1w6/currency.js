var dollarPerPound = 1.6140;



function convertToPounds(val1){

  return "$"+ val1 + " is £" + ((val1 * dollarPerPound).toFixed(2));
  
}

function convertToDollars(val1){

  return "£"+ val1 + " is $" + ((val1 / dollarPerPound).toFixed(2));

}
