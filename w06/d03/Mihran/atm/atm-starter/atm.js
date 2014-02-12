function Account(balance){
  this.balance = balance;
}

Account.prototype.deposit = function(amount){
  if (amount<= 0){
    return;
  }
  if (amount > 0){
    return this.balance += amount;
  }
}

Account.prototype.withdraw = function(amount){
  if (amount > this.balance){
    return;
  } else {
    return this.balance -= amount; 
  }
}

Account.prototype.updateBalance = function(){
  this.balanceDisplay.innerHTML = "$" + this.balance;
}

Account.prototype.makeDeposit = function() {
  var depositAmount = parseInt(this.amountInput.value);
  this.deposit(depositAmount);
  this.updateBalance()
}

Account.prototype.makeWithdrawal = function() {
  var withdrawalAmount = parseInt(this.amountInput.value);
  this.withdraw(withdrawalAmount);
  this.updateBalance()
}

Account.prototype.attachListeners = function() {
  this.withdrawButton.addEventListener('click', this.makeWithdrawal.bind(this));
  this.depositButton.addEventListener('click', this.makeDeposit.bind(this));
}


window.onload = function() {

  window.checking = new Account(0); 
  checking.balanceDisplay = document.getElementById("checking_balance"); 
  checking.amountInput = document.getElementById("checking_amount"); 
  checking.depositButton = document.getElementById("checking_deposit"); 
  checking.withdrawButton = document.getElementById("checking_withdraw");
  checking.attachListeners(); 


  window.savings = new Account(0);
  savings.balanceDisplay = document.getElementById("savings_balance"); 
  savings.amountInput = document.getElementById("savings_amount"); 
  savings.depositButton = document.getElementById("savings_deposit");  
  savings.withdrawButton = document.getElementById("savings_withdraw");
  savings.attachListeners(); 
}

