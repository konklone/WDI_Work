

var Account = function(name, balance) {
  this.name = name;
  this.balance = balance;
}

var checking_atm = new Account("checking", 0);
var savings_atm = new Account("savings", 0);

/******* TARGET HTML ELEMENTS *****/

Account.prototype.initialize = function() {
  this.balanceDisplay = document.getElementById(this.name + "_balance");
  this.withdrawButton = document.getElementById(this.name + "_withdraw");
  this.depositButton = document.getElementById(this.name + "_deposit");
  this.amount = document.getElementById(this.name + "_amount");
  // is this so we can pass "this" into the function below???
  var self = this;

  // Add event listener for deposit
  this.depositButton.addEventListener('click', function(){
    self.makeDeposit()
  });
}

/****** MODEL FUNTIONS *****/

Account.prototype.makeDeposit = funtion(){
  var depositAmount = parseInt(this.amount.value);
  this.balance += depositAmount;
  this.updateDisplay();
}

Account.prototype.updateDisplay = function(){
  if (this.balance <= 0) {
    this.balanceDisplay.classList.add("zero");
  } else {
    this.balanceDisplay.classList.remove("zero");
  }
  this.balanceDisplay.innerHTML = "$" + this.balance;
  // resets the form window value
  this.amount.value = "";
}


window.onload = function(){
  console.log = ("loaded!!1");
}


/******* HELPER FUNCTIONS *****/

function makeWithdrawal(primary_atm, secondary_atm){
  var amount = parseInt(primary_atm.amount.value);
  if ( amount <= primary_atm.balance ) {
    primary_atm.balance -= amount;
  } else if ((amount > primary_atm.balance) && ( amount <= (primary_atm.balance + secondary_atm.balance) )) {
    secondary_atm.balance -= (amount - primary_atm.balance);
    primary_atm.balance = 0;
  }
  primary_atm.updateDisplay();
  secondary_atm.updateDisplay();
}

/******* LOAD JS ********/








