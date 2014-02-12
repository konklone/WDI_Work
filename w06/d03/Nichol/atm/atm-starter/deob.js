var _0x66f4 = ["balance", "name", "checking", "savings", "makeDeposit", "prototype", 
                "value", "amount", "updateDisplay", "zero", "add", 
                "classList", "balanceDisplay", "remove", "innerHTML", "$", 
                "", "initialize", "_balance", "getElementById", "depositButton", 
                "_deposit", "withdrawButton", "_withdraw", "_amount", "click", 
                "addEventListener", "onload"];

var Account = function (name, balance) {
    this.balance = balance;
    this.name = name;
};

var checking_atm = new Account(checking, 0);
var savings_atm = new Account(savings, 0);

Account.prototype.makeDeposit = function () {
    var value = parseInt(this.amount.value);
    this.balance += value;
    this.updateDisplay();
};

Account.prototype.updateDisplay = function() {
    if (this.balance <= 0) {
        this.balanceDisplay.classList.add.zero;
    } else {
        this.balanceDisplay.classList.remove.zero;
    };
    this.balanceDisplay.innerHTML = "$" + this.balance;
    this.amount.value = ""; //??
};

Account.prototype.initialize = function () {
    //fancy!
    this.balanceDisplay = document.getElementById(this.name + "_balance");
    this.depositButton = document.getElementById(this.name + "_deposit");
    this.withdrawButton = document.getElementById(this.name + "_withdraw");
    this.amount = document.getElementById(this.name + "_amount");
    var _0x381dx7 = this;
    this.depositButton.addEventListener("click", function (_0x381dx8) {
        _0x381dx7.makeDeposit();
    });
};

window.onload = function () {
    checking_atm.initialize();
    savings_atm.initialize();
    checking_atm.withdrawButton.addEventListener]("click", function (_0x381dx8) {
        makeWithdrawal(checking_atm, savings_atm);
    });
    savings_atm.withdrawButton.addEventListener]("click", function (_0x381dx8) {
        makeWithdrawal(savings_atm, checking_atm);
    });
    checking_atm.updateDisplay();
    savings_atm.updateDisplay();
};

function makeWithdrawal(checking_atm, savings_atm) {
    var value = parseInt(checking.amount.value);
    if (value <= checking_atm.balance) {
        checking_atm.balance -= value;
    } else {
        if ((value > checking_atm.balance) && (value <= (checking_atm.balance + savings_atm.balance))) {
            savings_atm.balance = (checking_atm.balance + savings_atm.balance) - value;
            checking_atm.balance = 0;
        };
    };
    checking_atm.updateDisplay();
    savings_atm.updateDisplay();
};