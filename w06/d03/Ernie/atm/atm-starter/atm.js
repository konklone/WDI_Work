window.onload = function () {
  
function Account(startingBalance){
    this.balance = startingBalance;
 };

Account.prototype.balance = function(account) {
  return this.balance
 };

Account.prototype.deposit = function(amount) {
  this.balance = this.balance + amount
  return this.balance;
};

Account.prototype.withdraw = function (amount) {
 if(this.balance >= amount){
    this.balance = this.balance - amount
    return this.balance;
  }else{
    (this.balance < amount)
    return "We cannot process your transaction!"
  }
}

checking = new Account(0);
savings = new Account(0);

checkingInput = document.getElementById('checking_deposit')

updateDepositChecking = document.getElementById('checking_deposit');

updateDepositChecking.onclick = checkingWithdrawFunc

function checkingWithdrawFunc (wth_amt){
  console.log('bkah')
  updateDepositChecking.innerHTML = ("$" + (parseInt(updateDepositChecking.innerHTML.split("$")[1] ) - checkingInput.value).toString());
}

function checkingDepositFunc(wth_amt){
  update.innerHTML = ("$" + (parseInt(update.innerHTML.split("$")[1] ) + input.value).toString());
}









};



