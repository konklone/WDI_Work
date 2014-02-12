// window.onload = ;

function Account(){
   // this.acc_name = ;
   this.balance = 0;
};

Account.prototype.withdraw = function(amount) {
   if(this.balance <= 0){
      alert("Insufficient funds.");
      this.balance = this.balance;
   } else{
      this.balance -= amount;
   };
};

Account.prototype.deposit = function(amount) {
   this.balance += amount;
};

var checking = new Account(0);
var savings = new Account(0);

// function balanceWithdraw(amount) {
//    if (checking.balance < amount){
//       checking.withdraw(amount)
//    } else {
//       savings.withdraw(amount)
//    }
// } 

var c_button = document.getElementById("checking_deposit");
c_button.addEventListener("click", deposit, false);

var s_button = document.getElementById("savings_deposit");
c_button.addEventListener("click", deposit, false);

// 

var c_button = document.getElementById("checking_withdraw");
c_button.addEventListener("click", withdraw, false);

var s_button = document.getElementById("savings_withdraw");
c_button.addEventListener("click", withdraw, false);


// c.addEventListener("click", updateBalance, false);

