function Account(type, balance){
  this.type = type; 
  this.balance = balance; 
}

var checkings_atm = new Account(type = "checking", balance = 0);
var savings_atm = new Account(type = "savings", balance = 0);

Account.prototype.makeWithdrawl = function(savings, checking) {
  if(amount <= this.balance) {
    return this.balance - amount; 
  } else if( (amount <= this.balance) && (this.type == "checking") ) { 

  }
};

Account.prototype.makeDeposit = function(savings, checking) {
  var newBalance = this.balance + amount; 
  return newBalance;
};

