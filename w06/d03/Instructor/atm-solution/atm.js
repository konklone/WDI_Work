var Account = function(name, balance) {
  this.balance = balance;
  this.name = name;
}

var checking_atm = new Account('checking', 0);
var savings_atm = new Account('savings', 0);


Account.prototype.makeDeposit = function() {
  var amount = parseInt(this.amount.value);
  this.balance += amount;
  this.updateDisplay();
}

Account.prototype.updateDisplay = function() {
  if(this.balance <= 0) {
    this.balanceDisplay.classList.add("zero");
  } else {
    this.balanceDisplay.classList.remove("zero");
  }
  this.balanceDisplay.innerHTML = "$" + this.balance;
  this.amount.value = "";
}

Account.prototype.initialize = function() {
  this.balanceDisplay = document.getElementById(this.name + "_balance");
  this.depositButton = document.getElementById(this.name + "_deposit");
  this.withdrawButton = document.getElementById(this.name + "_withdraw");
  this.amount = document.getElementById(this.name + "_amount");
  var self = this;

  this.depositButton.addEventListener('click', function(event) {
    self.makeDeposit();
  });
}



window.onload = function() {

  // Connect to DOM
  checking_atm.initialize();
  savings_atm.initialize();

  checking_atm.withdrawButton.addEventListener('click', function(event) {
    makeWithdrawal(checking_atm, savings_atm);
  });

  savings_atm.withdrawButton.addEventListener('click', function(event) {
    makeWithdrawal(savings_atm, checking_atm);
  });

  checking_atm.updateDisplay();
  savings_atm.updateDisplay();
};


function makeWithdrawal(primary_atm, secondary_atm) {
  var amount = parseInt(primary_atm.amount.value);
  if(amount <= primary_atm.balance) {
    primary_atm.balance -= amount;
  } else if((amount > primary_atm.balance) && (amount <= (primary_atm.balance + secondary_atm.balance))) {
    secondary_atm.balance = (primary_atm.balance + secondary_atm.balance) - amount;
    primary_atm.balance = 0;
  }
  primary_atm.updateDisplay();
  secondary_atm.updateDisplay();
}
