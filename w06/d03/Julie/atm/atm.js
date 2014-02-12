window.onload = function() {
function Account(name) {
   this.name = name;
   this.balance = 0;
  }

 checking = new Account("Checking");
 saving = new Account("Saving");

Account.prototype.addToBalance = function(amount) {
      var higherBalance = this.balance += amount;
      console.log( higherBalance );
  }

Account.prototype.debitFromBalance = function(amount, otheraccount){
    if(amount <= this.balance){
    var lowerBalance = this.balance -= amount;
    console.log( lowerBalance );
  }
   else if (amount <= this.balance + otheraccount.balance) {
    otheraccount.balance -= (amount - this.balance);
    this.balance = 0;
    console.log (this.balance);
    console.log (otheraccount.balance);

   } 
   else {
    return null;
   }   
}


 enterCheckAmount = document.getElementById('checking_amount');

 enterSavAmount = document.getElementById('savings_amount');


displayBalanceCheck = document.getElementById('checking_balance');
displayBalanceCheck.innerHTML = checking.balance;

displayBalanceSav = document.getElementById('savings_balance');
displayBalanceSav.innerHTML = saving.balance;




// enterAmount.addEventListener('', )

checkingDeposit = document.getElementById('checking_deposit');
checkingDeposit.addEventListener('click', function() {checking.addToBalance(Math.floor(enterCheckAmount.value)); });

savingsDeposit = document.getElementById('savings_deposit');
savingsDeposit.addEventListener('click', function() {saving.addToBalance(Math.floor(enterSavAmount.value)); });



checkingWithdraw = document.getElementById('checking_withdraw');
checkingWithdraw.addEventListener('click', function() { checking.debitFromBalance(Math.floor(enterCheckAmount.value), saving); } );

savingsWithdraw = document.getElementById('savings_withdraw');
savingsWithdraw.addEventListener('click', function() { saving.debitFromBalance(Math.floor(enterSavAmount.value), checking); } );


//This only works in console!!





// var cheeseButton = document.getElementById('add-cheese');


// cheeseButton.addEventListener('click', addDatCheese); // update text!
// cheeseButton.onclick = addDatCheese;

//     document.getElementById('l').addEventListener('click', function() {
//       console.log( "left" );
//       cheesy.style.left = (parseInt(cheesy.style.left) - 10).toString() + "px";
//     });
//     document.getElementById('r').addEventListener('click', function() {
//         console.log( "right" );
//         cheesy.style.left = (parseInt(cheesy.style.left) + 10).toString() + "px";
//     });
//     document.getElementById('u').addEventListener('click', function() {
//       console.log( "up" );
//       cheesy.style.top = (parseInt(cheesy.style.top) - 10).toString() + "px";
//     });
//     document.getElementById('d').addEventListener('click', function() {
//         console.log( "down" );
//         cheesy.style.top = (parseInt(cheesy.style.top) + 10).toString() + "px";
//     });
//     document.getElementById('b').addEventListener('click', function() {
//       console.log( "big" );
//       var size = window.getComputedStyle(cheesy).getPropertyValue("font-size");
//       cheesy.style.fontSize = (parseInt(size) + 1).toString() + "px";
//     });
//     document.getElementById('s').addEventListener('click', function() {
//       console.log( "small" );
//       var size = window.getComputedStyle(cheesy).getPropertyValue("font-size");
//       cheesy.style.fontSize = (parseInt(size) - 1).toString() + "px";
//     });

}
