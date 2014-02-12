/********************** DEFINE THE CHECKING ACCOUNT MODEL **********************/

function Account( accountName ) { // be careful with the var "name", it's overloaded by js
  this.name = accountName;        // here we are using "name" in a specific scope
  this.amount = 0;                //   (ie, context), so it's safer...
  this.linkedAccounts = [];       // an array of other accounts that are linked...
}

/* Linking Accounts:
 *   pass an account object to another account, and create a link --
 * check to make sure that there are no other accounts with the same name (our unique id)
 * already linked, then link EACH to the other!
 */
Account.prototype.canLinkAccount = function( accountObj ) {
  // declare a helper function to ensure unique names for linked accounts
  function noAccountsOfName( accountName ) {
    return this.linkedAccounts.every( function( acctInList ) {
      return acctInList.name !== accountName;
    }); // returns true IF for each element of list, the function returns true
  }

  // check to make sure the account passed in is linkable!
  if (Object.getPrototypeOf(accountObj) !== Account.prototype) {
    return false; // can only link other account types
  } else if (this.name === accountObj.name) {
    return false; // cannot link to an account of the same name!
  } else if (! noAccountsOfName.call( this, accountObj.name )){ //make THIS object the same inside!
    return false; // cannot have two linked accounts of the same name!
  } else {

    // good to go on this end!
    return true; // success!
  }
};

Account.prototype.linkAccount = function( accountObj ) {
  console.log( "Linking account '" + accountObj.name + "' to '" + this.name + "'..." );

  // check this account
  if (! this.canLinkAccount( accountObj )) {
    console.log( "Name collision in linking account." );
    return false;

  // now, check on the OTHER account!
  } else if (! accountObj.canLinkAccount( this )) {
    console.log( "Name collision in account to be linked." );
    return false;

  // and ensure the other account has NO linked accounts!
  //   (otherwise it's too hard to cascade reference for each link...)
  } else if (accountObj.linkedAccounts.length !== 0) {
    console.log( "Cannot link account that has links already..." );
    return false;

  // it worked!
  } else {
    // link it to this account and all
    this.linkedAccounts.forEach( function( accountInList ) {
      console.log( "  * pushing '" + accountObj.name + "' on to '" +
                   accountInList.name + "'");
      accountInList.linkedAccounts.push( accountObj );
    });

    // link this account and all linked to the new account!
    this.linkedAccounts.forEach( function( accountInList ) {
      console.log( "  * pushing '" + accountInList.name + "' on to '" +
                   accountObj.name + "'");
      accountObj.linkedAccounts.push( accountInList );
    });


    console.log( "  * pushing '" + accountObj.name + "' on to '" +
                   this.name + "'");
    this.linkedAccounts.push( accountObj );
    console.log( "  * pushing '" + this.name + "' on to '" +
                   accountObj.name + "'");
    accountObj.linkedAccounts.push( this );
    return true;
  }
};

/* Linked accounts amounts:
 *   return the balance of this and all linked accounts together,
 * and transfer amounts between them.
 */
Account.prototype.balance = function() {
  //console.log( this );
  return this.linkedAccounts.reduce( function( previousAmount, currentAccount ) {
    return previousAmount + currentAccount.amount; // a little tricky: acct vs acct.amt!
  }, this.amount );
};

Account.prototype.credit = function( creditAmount ) {        // again, amount is used inside,
  console.log( "parsed input:" + parseFloat( creditAmount ) ); //   so not re-using it...
  creditAmount = parseFloat( creditAmount );

  if ( isNaN( creditAmount ) ) {
    return NaN;
  }

  this.amount += creditAmount;
  return this.amount;
};

Account.prototype.debit = function( debitAmount ) {
  console.log( "parsed input:" + parseFloat( debitAmount ) );
  debitAmount = parseFloat( debitAmount );

  if ( isNaN( debitAmount ) ) {
    return NaN;
  }

  // check balance, if not enough then return false
  if (debitAmount > this.balance()) {
    console.log( "OVERDRAW: " + debitAmount + " > " + this.balance() + "!" );
    return false;
  }

  // debit this account
  this.amount -= debitAmount;

  // if this account is overdrawn, transfer from next linked account
  if (this.amount < 0) {
    var overdraw = -this.amount;
    this.amount = 0;

    for (var i = 0; i < this.linkedAccounts.length; i++){
      this.linkedAccounts[i].amount -= overdraw;
      if (this.linkedAccounts[i].amount >= 0) { // we're good!
        break;
      } else { // repeat!
        overdraw = this.linkedAccounts[i].amount;
        this.linkedAccounts[i].amount = 0;
      }
    }
  }
  return this.amount;
};

Account.prototype.toString = function() {
  var output = this.name + ": $" + this.amount;
  this.linkedAccounts.forEach( function( acct ) {
    output += "\n  Linked Account: '" + acct.name + "'";
  });
  return output;
};

/********************** DEFINE TRANSACTION EVENT LISTENER **********************/
// ie the controller

// define a transaction
function transaction(accountName, action, accountList) {
  var amount = this.value || ""; // handle if null
  amount = (amount.indexOf("$") != -1 ? amount.split("$")[1] : amount ); // handle '$' if any
  amount = parseFloat( amount ); // turn to int

  if (isNaN( amount )){
    alert( "Is not a valid amount!" );
    return false;
  }
  // logging for debug...
  console.log( "Request! Account: '" + accountName + "', Action: '" +
               action + "', Amount: " + amount );

  if (action == 'deposit') { // credit and update HTML for account
    var result = accountList[accountName].credit(amount);
    document.getElementById( accountName + "_balance" ).textContent = "$" + result.toFixed(2);

    // remove class zero if not zero (the one outside case is a deposit of 0...)
    if (result !== 0) {
      document.getElementById( accountName + "_balance" ).classList.remove("zero");
    }
  } else if (action == 'withdraw') {
    var result = accountList[accountName].debit(amount);
    if (result === false) { // debit failed...
      alert( "Can't withdraw that much: balance insufficient!" );
      return false;
    } else {
      for (var key in accountList) {
        account = accountList[key];
        if (Object.getPrototypeOf(account) === Account.prototype) {
          balanceDiv = document.getElementById( account.name + "_balance" );

          // add class zero if making the account empty
          if ( (account.amount === 0) &&
               (parseFloat( balanceDiv.textContent.split("$")[1] ) !== 0) ) {
            balanceDiv.classList.add( "zero" );
          }

          balanceDiv.textContent = "$" + account.amount.toFixed(2);
        }
      }
    }
  }

  // clear text field
  this.value = null;
}

/******** INSTANTIATE  ACCOUNTS AND ATTACH LISTENERS TO DOM OBJECTS *********/
// ie, the view...

var accounts;

window.onload = function() { // once all DOM elements are loaded...

  // very important! instantiate and link the accounts described in the model
  accounts = {
    checking: new Account( "checking" ),
    savings:  new Account( "savings" )
  };
  accounts.checking.linkAccount( accounts.savings ); // bi-directional!

  //accounts.balance always runs as if it is a method on the accounts.checking object
  accounts.balance = Account.prototype.balance.bind( accounts.checking );
  accounts.linkAccount = Account.prototype.linkAccount.bind( accounts.checking );
  
  // test to see it worked! *********************** DEBUG ***********************
  console.log( accounts.checking.toString() );
  console.log( accounts.savings.toString() );
  console.log( accounts.balance() );
  // ********************************************** DEBUG ***********************

  // call Array's slice method on the NodeList to return it as an array
  //   see: http://davidwalsh.name/nodelist-array
  var buttons  = Array.prototype.slice.call(document.querySelectorAll("input[type=button]"));
  var balances = Array.prototype.slice.call(document.querySelectorAll("div.balance"));

  // add the transaction function to each button's click event dynamically
  buttons.forEach( function( button ) {
    button.addEventListener( 'click', function(event) {
      var sourceInfo = event.srcElement.id.split("_"); // get the source id and split
      var tgtElement = document.getElementById( sourceInfo[0] + "_amount" );
      sourceInfo.push( accounts );

      // run the transaction
      transaction.apply( tgtElement, sourceInfo );
    });
  });

  // add the "zero" class to the balance divs and reset to 0.00
  balances.forEach( function(div) {
    div.classList.add( "zero" );
    div.textContent = "$0.00"
  });

};
