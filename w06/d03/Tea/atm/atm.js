
// var dollar_amount;
// var checkingBalance = parseInt(document.getElementById('checking_balance').innerHTML.slice(1));
// var savingsBalance = parseInt(document.getElementById('savings_balance').innerHTML.slice(1));

// function deposit(dollar_amount, account){
//   dollars = parseInt(dollar_amount);
//   checkingBalance = ("$" + (dollars + checkingBalance));
//   return checkingBalance;
// }


// function withdraw(dollar_amount, account){
//   dollars = parseInt(dollar_amount);
//   newAmount = (checkingBalance - dollars);
//   if (newAmount < 0 ){
//     newAmount = (checkingBalance + savingsBalance - dollars);
//     if (newAmount < 0) {
//       return ("$" + checkingBalance);
//     } else {
//       checkingBalance = 0;
//       savingsBalance = newAmount;
//       return ("$" + checkingBalance);
//     }
//   }
//   else {
//     checkingBalance = newAmount;
//     return ("$" + checkingBalance);
//   }
// }


// make bank object like shelter :: has accounts
// function Account objects 
//        balance: self.innerHTMLbalance;

//        Account.prototype.withdraw/deposit

// function Bank
//        accounts: [checkingAccount, savingsAccount]
//        checking: checkingAccount.balance;
//        savings: savingsAccount.balance;
//        totalAmount: (accountChecking + accountSaving)

// 
//      Bank.prototype.enough? ((totalAmount-dollarAmount) > 0)

function Account () {
  // Make account balance start with zero.
  this.balance = 0;
}
            
function Bank() {
  this.accounts = {
    checking: new Account(),
    savings: new Account()
  };
}

Bank.prototype.balance = function () {
  // Summarize the balance from all the acconts to check if withdraw is possible.
  var balance = this.accounts.checking.balance + this.accounts.savings.balance;
  return balance;
}

Bank.prototype.otherAccount = function(account) {
  if(account === "checking"){
    return "savings";
  } else {
    return "checking";
  }
}

Bank.prototype.withdraw = function (amount, account) {
  // Check if Bank.balance > 0. If not, shout at them and do nothing. Else..
  this.accounts[account].withdraw(amount);
  // If negative number, set this.accounts[account].balance = 0, 
  // abs = absolute value of remainder
  // this.OtherAccount.withdraw(abs);
}

Account.prototype.withdraw = function (amount) {
  // remove some monies + check that there is enough
  this.balance - amount;
}

Account.prototype.deposit = function (amount) {
  // add monies!
}