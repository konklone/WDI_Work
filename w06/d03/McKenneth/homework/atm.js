window.onload = function(){

  // CHECKING ACCOUNT
  var checkingBalance = 0;
  var depositChecking = document.getElementById("checking_deposit");
  var withdrawChecking = document.getElementById("checking_withdraw");
  var displayedChecking = document.getElementById("checking_balance");
  var transfer = document.getElementById("transfer_button");
  var overdraft = 0;
  // SAVINGS ACCOUNT

  var savingsBalance = 0;
  var depositSavings = document.getElementById("savings_deposit");
  var withdrawSavings = document.getElementById("savings_withdraw");
  var displayedSavings = document.getElementById("savings_balance");// Account Color
 
  // Account Color
  var check = (function checker(){

    if (checkingBalance < 1 ){
      var rColor = document.getElementsByClassName("checking");
      for (var i = 0; i < rColor.length; i = 0) {
         rColor[i].className = "czero";
      }
         }
    if (savingsBalance < 1){
      var rColor = document.getElementsByClassName("savings");
      for (var i = 0; i < rColor.length; i = 0) {
         rColor[i].className = "szero";
      }
         }
         if (checkingBalance > 0){
            var gColor = document.getElementsByClassName("czero");
            for (var i = 0; i < gColor.length; i = 0) {
             gColor[i].className = "checking";
         }
        }
        if (savingsBalance > 0){
            var gColor = document.getElementsByClassName("szero");
            for (var i = 0; i < gColor.length; i = 0) {
             gColor[i].className = "savings";
         }
        }   
   });

  var zeroString = (function zeroCheck(){
  if (amount == ""){
    var amount = "0";
  }
  return amount;
  });

  check();
 



// Checking Buttons

depositChecking.onclick = function(){
  var amount = document.getElementById("checking_amount").value;
    if (amount == ""){
    var amount = "0";
  }
    checkingBalance += parseInt(amount);
    displayedChecking.innerHTML = checkingBalance;
    check();
    
};

withdrawChecking.onclick = function(){

  var amount = document.getElementById("checking_amount").value;
    if (amount == ""){
    var amount = "0";
  }
    if (amount <= checkingBalance ){
    checkingBalance -= parseInt(amount);
    }else if (amount > checkingBalance && savingsBalance >= (amount-checkingBalance)){
      savingsBalance -= (parseInt(amount)-checkingBalance);
      checkingBalance -= checkingBalance;
    }
    displayedChecking.innerHTML = checkingBalance;
    displayedSavings.innerHTML = savingsBalance;
    check();
};

// SAVINGS ACCOUNT

var depositSavings = document.getElementById("savings_deposit");
var withdrawSavings = document.getElementById("savings_withdraw");
var displayedSavings = document.getElementById("savings_balance");

 // Savings Buttons 

 depositSavings.onclick = function(){
  var amount = document.getElementById("savings_amount").value;
  if (amount == ""){
    var amount = "0";
  }
    savingsBalance += parseInt(amount);
    displayedSavings.innerHTML = savingsBalance;
    check();
 };

 withdrawSavings.onclick = function(){
  var amount = document.getElementById("savings_amount").value;
  if (amount == ""){
    var amount = "0";
  }
  if (amount <= savingsBalance){
  savingsBalance -= parseInt(amount);
  }
  displayedSavings.innerHTML = savingsBalance;
  check();
 };

 // TRANSFER

transfer.onclick = function(){
  var amount = document.getElementById("transfer_amount").value;
  if (amount == ""){
    var amount = "0";
  }
  if (amount <= savingsBalance){
    savingsBalance -= parseInt(amount);
    checkingBalance += parseInt(amount);
  }
  displayedSavings.innerHTML = savingsBalance;
  displayedChecking.innerHTML = checkingBalance;
  check();
} ;



}