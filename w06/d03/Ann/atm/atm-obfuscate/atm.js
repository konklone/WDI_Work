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
  var deposit_amount = parseInt(this.deposit_button.value); 
  this.deposit(deposit_amount); 
  this.updateBalance

}

Account.prototype.makeWithdraw = function(){
  var withdraw_amount = parseInt(this.withdraw_button); 
  this.withdraw(withdraw_amount); 
}

Account.prototype.attachListeners = function(){
  this.deposit_button.onclick = this.makeDeposit; 
  this.withdraw_button.onclick = this.makeWithdraw; 
}

Account.prototype.updateBalance = function(){
  
}



window.onload = function() {

window.savings = new Account(savings_balance);

savings.balance_display = document.getElementById("savings_balance"); 
savings.amount_input = document.getElementById("savings_amount"); 
savings.deposit_button = document.getElementById("savings_deposit");  
savings.withdraw_button = document.getElementById("savings_withdraw");
saving.attachListeners(); 


window.checking = new Account(checking_balance); 

checking.balance_display = document.getElementById("savings_balance"); 
checking.amount_input = document.getElementById("checking_amount"); 
checking.deposit_button = document.getElementById("checking_deposit"); 
checking.withdraw_button = document.getElementById("checking_withdraw");
checking.attachListeners(); 

}




