
window.onload = console.log( "Loaded!" );
window.onload = function(){

// Account object
function Account(name){
  this.name = name;
  this.balance = 0;
}

// instances of Account
checking = new Account("checking");
savings = new Account("savings");

// Account functions
Account.prototype.deposit = function( val ){
   return (this.balance += val);
}

Account.prototype.debit = function( val, otheraccount ){
  if ((this.balance -= val) >= 0) {
    return (this.balance -= val); 
  } else if ((this.balance + otheraccount.balance) <  val) {
    return (this.balance + otheraccount.balance -= 0);
    } else { ((this.balance + otheraccount.balance -= 0) < 0);
    return null;
  };
}

// checking deposit button functionality

// this is the checking deposit button
checkingDeposit = document.getElementById("checking_deposit");

// This is the 0 on the ATM console
currentBalanceString = checking_balance.innerHTML;

// parsed from the dollar sign and turned into an integer
currentBalance = parseInt(currentBalanceString[1]);

// this is the onclick function to edit the atm console with the new deposit amount.
// I had a lot more variables set up but somehow I ended up with this mess:
document.getElementById("checking_deposit").onclick=function(){checking_balance.innerHTML.appendChild(parseInt(document.getElementById("checking_amount").value)};
== checking.deposit()


// my plan was to write a block similar to the above for checking debit, savings deposit, savings debit. that's as far as I got!

}; 

}

// checking deposit button code that got left in the dust:

// checkingDebit = document.getElementById("checking_withdraw")
// checkingBalance = document.getElementById("checking_balance")
// checkingAmount = document.getElementById("checking_amount")
// savingsDeposit = document.getElementById("savings_deposit")
// savingsDebit = document.getElementById("savings_withdraw")
// savingsBalance = document.getElementById("savings_balance")
// savingsAmount = document.getElementById("savings_amount") 

// newBalance = "$" + checking.deposit() + currentBalance;
// updateAmount = function() {
//   currentBalance + checking.deposit;
// updateAmount();

