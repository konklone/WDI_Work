//design object for account first
//THEN figure about connecting it to DOM.

// My tries:

//___________

//declare "global" vars to represent the amts in the accounts
// var checkAmount = 0;
// var saveAmount = 0;

//document.getElementByclassName("account");
//balance, checking_amount, checking_withdrawal, checking_deposit
//account object
// function Account(name, type){
//   this.type = type;
//   this.name = name;
//   this.dollars = 0;
// }

//debit from acct
// Account.prototype.debit = function(dollar){
  //is this account checking or savings
  //if my acct has enuf take out

  // if (debit <= dollar){
  //   this.dollars -= dollar;
  // //else check savings
  // }else if(debit <= savings){
  //   this.dollars -= dollar;
  // }
  //else turn it red and don't allow debit.
//};


//deposit to acct
// Account.prototype.deposit = function(dollar){
//   this.dollars += dollar;
// };

//create my acct
// var myCheck = new Account("mariasCheckacct", "checking");
// var mySav = new Account("mariasSavacct", "savings");

//----------try 2

// Account.prototype.addToBalance = function(amount) {
//       var higherBalance = this.balance += amount;
//       return higherBalance;
//   };

// Account.prototype.debitFromBalance = function(amount, otheraccount){
//     if(amount <= this.balance){
//         var lowerBalance = this.balance -= amount;
//         return lowerBalance;
//     }else if (amount <= this.balance + otheraccount.balance) {
//          otheraccount.balance -= (amount - this.balance);
//          this.balance = 0;
//          return this.balance;
//          return otheraccount.balance;
//      }else{
//          return null;
//      };  
// };




