/********** Define Account Object *************/
function Account (type, balance){
  this.type = type;
  this.balance = balance;
}

// Add Prototype to Deposit to Account
// expect that it returns the new balance if the deposit was successful.
Account.prototype.deposit = function(amount){
  this.balance += amount;
  return this.balance;
}

// Add Prototype to Debit from Account
// if able to debit from given account, execute, otherwise, 
// check total balance, and withdraw appropriately.
Account.prototype.debit = function(amount, otherAccount){
  if((this.balance - amount) >= 0){
    this.balance = this.balance - amount;  
  } else {
      total = this.balance + otherAccount.balance;
      if((total - amount) >= 0) {
        this.balance -= amount;
        otherAccount.balance += this.balance;
        this.balance = 0;
      } else {
        alert("YOU DONT HAVE ENOUGH MONEY");
      }
    }
  return this.balance;
}
/**************************************************/

//instantiate the two accounts
myChecking = new Account("checking", 0);
mySavings = new Account("savings", 0);


//helper functions
function getValue(field){
  return parseInt(value = document.getElementById(field).value);
}

function updateDisplay(){
  //update balance elements
  balanceElement = document.getElementById('checking_balance');
  balanceElement.innerHTML = myChecking.balance;

  balanceElement = document.getElementById('savings_balance');
  balanceElement.innerHTML = mySavings.balance;

  //update classes
  if(myChecking.balance > 0){
      document.getElementById("checking_balance").className = "balance";
      } else {
        document.getElementById("checking_balance").className = "zero";
      }
  if(mySavings.balance > 0){
      document.getElementById("savings_balance").className = "balance";
      } else {
        document.getElementById("savings_balance").className = "zero";
      }
}

window.onload = function(){
  console.log("loaded!");
  
  // update to adjust 0 balance and allow for accounts with previous balances.
  updateDisplay();

  //create button elements for event listeners
  var elCheckingDepositButton = document.getElementById("checking_deposit");
  var elCheckingDebitButton = document.getElementById("checking_withdraw");
  var elSavingsDepositButton = document.getElementById("savings_deposit");
  var elSavingsDebitButton = document.getElementById("savings_withdraw");

  //setup listener for each button.
  elCheckingDepositButton.addEventListener("click", function(){
    myChecking.deposit(getValue('checking_amount'));
  }, false);

  elCheckingDebitButton.addEventListener("click", function(){
    myChecking.debit(getValue('checking_amount'), mySavings);
  }, false);

  elSavingsDepositButton.addEventListener("click", function(){
    mySavings.deposit(getValue('savings_amount'));
  }, false);

  elSavingsDebitButton.addEventListener("click", function(){
    mySavings.debit(getValue('savings_amount'), myChecking);
  })

  //setup listener for window to do updateDisplay() whenever there is a click.
  window.addEventListener("click", function(){
    updateDisplay();
  }, false);
}


