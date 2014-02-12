var ex = 1.6142

var dollars = 100

function dollars_to_pounds (x) {
  return "$" + x + "is £" + parseFloat(x*1/ex).toFixed(2);
}

dollars_to_pounds(dollars)

function pounds_to_dollars (x) {
  return "£" + x + "is $" + parseFloat(x * ex).toFixed(2) ;  
}

pounds = 45

pounds_to_dollars(pounds)