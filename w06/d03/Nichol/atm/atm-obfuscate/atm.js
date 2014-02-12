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
var savings_atm = new Account(saavings, 0);

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
    this.amount = document.getElementById(this.name [_0x66f4[1]] + "_amount");
    var _0x381dx7 = this;
    this.depositButton.addEventListener("click", function (_0x381dx8) {
        _0x381dx7.makeDeposit();
    });
};

window[_0x66f4[27]] = function () {
    checking_atm[_0x66f4[17]]();
    savings_atm[_0x66f4[17]]();
    checking_atm[_0x66f4[22]][_0x66f4[26]](_0x66f4[25], function (_0x381dx8) {
        makeWithdrawal(checking_atm, savings_atm);
    });
    savings_atm[_0x66f4[22]][_0x66f4[26]](_0x66f4[25], function (_0x381dx8) {
        makeWithdrawal(savings_atm, checking_atm);
    });
    checking_atm[_0x66f4[8]]();
    savings_atm[_0x66f4[8]]();
};

function makeWithdrawal(_0x381dxa, _0x381dxb) {
    var _0x381dx6 = parseInt(_0x381dxa[_0x66f4[7]][_0x66f4[6]]);
    if (_0x381dx6 <= _0x381dxa[_0x66f4[0]]) {
        _0x381dxa[_0x66f4[0]] -= _0x381dx6;
    } else {
        if ((_0x381dx6 > _0x381dxa[_0x66f4[0]]) && (_0x381dx6 <= (_0x381dxa[_0x66f4[0]] + _0x381dxb[_0x66f4[0]]))) {
            _0x381dxb[_0x66f4[0]] = (_0x381dxa[_0x66f4[0]] + _0x381dxb[_0x66f4[0]]) - _0x381dx6;
            _0x381dxa[_0x66f4[0]] = 0;
        };
    };
    _0x381dxa[_0x66f4[8]]();
    _0x381dxb[_0x66f4[8]]();
};