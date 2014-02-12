function Account(balance){
  this.balance = balance; 
} 

Account.prototype.deposit = function(amount){
  if (amount > 0){
    return this.balance += amount;  
  }
}

Account.prototype.withdraw = function(amount){
  if (amount > this.balance){
    return this.balance; 
  } else {
    return this.balance -= amount; 
  }
}

Account.prototype.makeDeposit = function(){
  var deposit_amount = this.amount_input.value; 
  this.deposit(deposit_amount); 
  this.updateBalance(); 
}

Account.prototype.makeWithdraw = function(){
  var withdraw_amount = parseInt(this.amount_input.value); 
  this.withdraw(withdraw_amount); 
  this.updateBalance(); 
} 

Account.prototype.attachListeners = function(){
  this.deposit_button.onclick = this.makeDeposit; 
  this.withdraw_button.onclick = this.makeWithdraw; 
}

Account.prototype.updateBalance = function(){
  this.balance_display.innerHTML = "$" + this.balance;
}

// window.onload = function() {

savings = new Account(10);

savings.balance_display = document.getElementById("savings_balance"); 
savings.amount_input = document.getElementById("savings_amount"); 
savings.deposit_button = document.getElementById("savings_deposit");  
savings.withdraw_button = document.getElementById("savings_withdraw");
savings.attachListeners(); 


checking = new Account(10); 

checking.balance_display = document.getElementById("checking_balance"); 
checking.amount_input = document.getElementById("checking_amount"); 
checking.deposit_button = document.getElementById("checking_deposit"); 
checking.withdraw_button = document.getElementById("checking_withdraw");
checking.attachListeners(); 
//}




