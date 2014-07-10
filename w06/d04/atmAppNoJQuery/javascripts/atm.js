window.onload = function documentReady() {
  var savingsAccount = new Account('.savings').initialize();
  var checkingAccount = new Account('.checking', savingsAccount).initialize();
//    addOverdraftTo(checkingAccount, savingsAccount);
}

function Account(selector, overdraftAccount) {
  this.el = document.querySelector(selector);
  this.balance = 1337;
  this.overdraftAccount = overdraftAccount;
    // TODO raise hell if this.el is null.
 }

 Account.prototype = {
  initialize: function initialize () {
    this.displayBalance();
    this.bindWithdrawal();
    this.bindDeposit();
    return this;
 },
 displayBalance: function displayBalance () {
    this.balanceField().innerHTML = this.balance;
 },
 bindWithdrawal: function bindWithdrawal () {
    function callback (e) {
      e.preventDefault();
      this.withdraw();
   }
   this.withdrawButton().addEventListener('click', callback.bind(this));
},
withdraw: function withdraw () {
 debugger;
 if(this.overdraftAccount !== undefined) {
   this.withdrawWithOverdraft();
} else {
   this.withdrawWithoutOverdraft();
}
},
withdrawWithOverdraft: function withdrawWithOverdraft() {
 if (this.tentativeBalanceAfterWithdrawal() >= 0) {
   this.removeClass('insufficient-funds');
   this.balance = this.tentativeBalanceAfterWithdrawal();
   this.displayBalance();
   return;
}
if (this.tentativeBalanceAfterWithdrawal() + this.overdraftAccount.balance >= 0) {
   this.removeClass('insufficient-funds');
   this.overdraftAccount.balance += this.tentativeBalanceAfterWithdrawal();
   this.balance = 0;
   this.displayBalance();
   this.overdraftAccount.displayBalance();
   return;
}
this.addClass('insufficient-funds');
},
withdrawWithoutOverdraft: function withdrawWithoutOverdraft () {
 if (this.tentativeBalanceAfterWithdrawal() < 0) {
   this.addClass('insufficient-funds');
   this.displayBalance();
} else {
   this.removeClass('insufficient-funds');
   this.balance = this.tentativeBalanceAfterWithdrawal();
   this.displayBalance();
}

},
tentativeBalanceAfterWithdrawal: function tentativeBalanceAfterWithdrawal () {
 return this.balance - this.inputFieldValue();
},
addClass: function addClass (className) {
 this.removeClass(className);
 this.el.className = this.el.className + ' ' + className;
},
removeClass: function removeClass (className) {
 this.el.className = this.el.className.replace(className, '');
},
bindDeposit: function bindDeposit () {
 function callback (e) {
   e.preventDefault();
   this.deposit();
}
this.depositButton().addEventListener('click', callback.bind(this));
},
deposit: function deposit () {
 this.balance += this.inputFieldValue();
 if (this.balance > 0) {
   this.removeClass('insufficient-funds');
}
this.displayBalance();
},
balanceField: function balanceField () {
 return this.el.querySelector('.balance');
},
inputField: function inputField () {
 return this.el.querySelector('input');
},
inputFieldValue: function inputFieldValue () {
 return parseInt(this.inputField().value);
},
depositButton: function depositButton () {
 return this.el.querySelector('.deposit');
},
withdrawButton: function withdrawButton () {
 return this.el.querySelector('.withdraw');
},
};
