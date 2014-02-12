function Account(name){
  this.name = name;
  this.balance = 0;
};

Account.prototype.deposit = function(amount){
  if (amount < 0){
    return false;
  } else {
    this.balance += amount;
  };
};

Account.prototype.withdraw = function(amount, overdraft_condom){
  if (amount > (this.balance + overdraft_condom.balance) || amount < 0){
    alert("YOU CAN'T DO THAT ASSHOLE");
  } else if (this.balance > amount){
    this.balance -= amount;
  } else{
    overdraft_condom.balance -= (amount - this.balance);
    this.balance = 0;
  };
};

Account.prototype.attachListeners = function(){
  this.attachListener(checkingDeposit, checkingDepositAction.bind(this))
  this.attachListener(checkingWithdraw, checkingWithdrawAction.bind(this))
};

var checking = new Account("checking");
var savings = new Account("savings");

window.onload = function(){
  console.log("LOADED!");

  var checkingBalance = document.getElementById("checking_balance");
  var checkingDeposit = document.getElementById("checking_deposit");
  var checkingWithdraw = document.getElementById("checking_withdraw");

  var checkingDepositAction = function(){
    // 1. check the amount
    var checkingAmount = parseInt(document.getElementById("checking_amount").value);
    // 2. add it to the balance
    checking.deposit(checkingAmount);
    // 3. update the DOM displayed balance
    checkingBalance.innerHTML = "$" + this.balance;
  };

  var checkingWithdrawAction = function(){
    var checkingAmount = parseInt(document.getElementById("checking_amount").value);
    checking.withdraw(checkingAmount);
    checkingBalance.innerHTML = "$" + this.balance;
  }

  var savingsBalance = document.getElementById("savings_balance");
  var savingsDeposit = document.getElementById("savings_deposit");
  var savingsWithdraw = document.getElementById("savings_withdraw");

  savingsDeposit.onclick = function(event){
    // do same stuff as in checking
    //  => savingsBalance.innerHTML = "$" + this.balance;
    var savingsAmount = document.getElementById("savings_amount").value;
    savings.deposit(savingsAmount);
    savingsBalance.innerHTML = "$" + this.balance
  };
};