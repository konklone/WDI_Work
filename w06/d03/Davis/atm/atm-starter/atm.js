// store checking_amount

  // when checking_deposit, increment by checking_amount
    // function
    // set checkingBalance to checkingAmount
      // addEventListener('click', function) to checking_deposit
  // when checking_withdraw, subtract by checking_amount

// balance display
document.getElementById("checking_balance")

// user input
document.getElementById("checking_amount")

window.onload = function() {

// deposit & withdraw functions ///////////////////////////
  var deposit = function() {
    var balance = document.getElementById("checking_balance").innerHTML;
    // capture number w/o $ sign
    var currentDollarValue = parseInt( balance.substring(1, balance.length) );
    // user input
    var userInput = document.getElementById("checking_amount").value;
    // set display to user input
    document.getElementById("checking_balance").innerHTML = "$" + ( currentDollarValue + parseInt( userInput ) ).toString();
  }

  var withdraw = function() {
    var balance = document.getElementById("checking_balance").innerHTML;
    // capture number w/o $ sign
    var currentDollarValue = parseInt( balance.substring(1, balance.length) );
    // user input
    var userInput = document.getElementById("checking_amount").value;
    // set display to user input
    document.getElementById("checking_balance").innerHTML = "$" + ( currentDollarValue - parseInt( userInput ) ).toString();
  }

  // setup buttons & click events//////////////////////////

  var checkingDepositButton = document.getElementById("checking_deposit");
  checkingDepositButton.addEventListener('click', deposit);

  var checkingWithdrawButton = document.getElementById("checking_withdraw");
  checkingWithdrawButton.addEventListener('click', withdraw)
}
