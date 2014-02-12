// Define the account object
function Account(name) {
  this.name = name;
  this.balance = 0;
}

// Add the deposit function to the account object
Account.prototype.deposit = function(amount){
  this.balance + amount;
  return.balance;
}

// Add the withdrawal function which returns the new balance
Account.prototype.withdrawal = function(amount, account){
  if this.balance - amount >= 0 {
    this.balance = this.balance - amount;
    }
  else {
    alert("YOU DON'T HAVE ENOUGH MONEY!");
  } 
}
return this.balance;

}

// Instantiate the bank accounts

myChecking = new Account("checking", 0);
mySavings = new Account("savings", 0);

