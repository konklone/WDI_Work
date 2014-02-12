window.onload = function(){

console.log("atm JS loaded!!!");

/*
 *
 *
 * HELPER FUNCTIONS
 *
 *
 ***/
 
  function WDIToolKit(){}

  WTK = new WDIToolKit();

  // we add functions as methods to our prototype object thus:
  WDIToolKit.prototype.forEach = function(arr, action) {
    for( var i = 0; i < arr.length; i++ ){
      action(arr[i]); // action() is called with one parameter, so:
      // when we define action we need to make sure that it has
      // and can manipulate that one parameter, ie function(e){...}
    }
  }

  // aliasing is simple! (we are aliasing from the prototype object)
  WDIToolKit.prototype.each = WDIToolKit.prototype.forEach;

  // create a new array, where each element is the output of a function
  // action(e), where 'e' is each element in arr (in order)
  WDIToolKit.prototype.map = function(arr, action) {
    var newArray = [];

    this.each( arr, function(element){
      newArray.push( action(element) );
    });

    return newArray;
  }

  // return an element from arr at random, if any exist
  WDIToolKit.prototype.sample = function(arr) {
    if (arr.length > 0) {
      return arr[Math.floor(Math.random() * arr.length)];
    } else {
      return false;
    }
  }

  // return an array that is a subset of arr for which each element
  // exists in the returning array if and only if the function
  // action(e) [where 'e' is each element of arr] returns *true*
  WDIToolKit.prototype.select = function(arr, action) {
    var newArray = [];

    this.each(arr, function(element){
      if ( action(element) === true ) {
        newArray.push( element );
      }
    });

    return newArray;
  };

  // return a single element of a select call (the first) with
  // the function action(e) if any exist; otherwise return false
  WDIToolKit.prototype.exists = function(arr, action) {
    var selects_result = this.select(arr, action);

    if (selects_result.length > 0) {
      return selects_result[0];
    } else {
      return false;
    }
  }

 /*
  *
  *
  *
  * THE GOOD STUFF
  *
  *
  ***/


  function Account(name, startingBalance) {
    this.name = name;
    this.balance = startingBalance;
  }

  checking = new Account("checking", 0);
  savings = new Account("savings", 0);

  function Bank(arr) {
  this.accounts = arr
  }

  bank = new Bank([checking, savings]);

  Bank.prototype.totalBalance = function() {
    var accountsTotal = 0;
    WTK.each(this.accounts, function(account){
      accountsTotal = accountsTotal + account.balance;
    });
    return accountsTotal;
  }

  Account.prototype.deposit = function(amount){
      var balanceWindow = document.getElementById(this.name + "_balance");
      balanceWindow.innerHTML = "$" + (this.balance + parseInt(amount));
      var displayValue = balanceWindow.innerHTML;
      displayValue = displayValue.replace('$', '');
      this.balance = parseInt(displayValue);
      zeroBalanceColor(bank.accounts);
  }

  Account.prototype.withdraw = function(amount) {
    var balanceWindow = document.getElementById(this.name + "_balance");
    // if balance is greater than amount requested
    if (this.balance >= parseInt(amount)) {
      balanceWindow.innerHTML = "$" + (this.balance - parseInt(amount));
      var displayValue = balanceWindow.innerHTML;
      displayValue = displayValue.replace('$', '');
      this.balance = parseInt(displayValue);
    // if balance is less than amount requested, but combined balance isn't  
    } else if ( bank.totalBalance() >=  parseInt(amount) ) {
        WTK.each(bank.accounts, function(account){
         var balanceWindow = document.getElementById(account.name + "_balance");
         if ( account.balance >= parseInt(amount) ) {
            account.balance = account.balance - parseInt(amount);
            balanceWindow.innerHTML = "$" + account.balance;
          }
          else {
            amount = amount - account.balance;
            account.balance = 0;
            balanceWindow.innerHTML = "$" + account.balance;
          }
        });
    // if balance of both accounts is less than what is requested
    } else {
        console.log("else statment")
        balanceWindow.innerHTML = "$" + 0;
        this.balance  = 0;
    } 
    zeroBalanceColor(bank.accounts);
  }

  /******** CSS CHANGING FUNCTIONS *********/
  var zeroBalanceColor = function(arr){
      WTK.each(arr, function(account) {
        var balanceWindow = document.getElementById(account.name + "_balance");
        if (account.balance == 0) {
          balanceWindow.className = "zero";
        } else {
          balanceWindow.className = "balance";
        }
      });
    }
    zeroBalanceColor(bank.accounts);

  /******** EVENT LISTENERS *********/

  var checkingAmountWindow = document.getElementById("checking_amount");
  var savingsAmountWindow = document.getElementById("savings_amount");

  var checkingDepositButton = document.getElementById("checking_deposit");
  checkingDepositButton.addEventListener("click", function(){checking.deposit(checkingAmountWindow.value);}, false);

  var savingsDepositButton = document.getElementById("savings_deposit");
  savingsDepositButton.addEventListener("click", function(){savings.deposit(savingsAmountWindow.value);}, false);

  var checkingWithdrawButton = document.getElementById("checking_withdraw");
  checkingWithdrawButton.addEventListener("click", function(){checking.withdraw(checkingAmountWindow.value);}, false);

  var savingsWithdrawButton = document.getElementById("savings_withdraw");
  savingsWithdrawButton.addEventListener("click", function(){savings.withdraw(savingsAmountWindow.value);}, false);

}  /************* END ONLOAD *****************/