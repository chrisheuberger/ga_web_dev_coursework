function BankAccount (balance){
  this.balance = balance;
}

BankAccount.prototype = {

  makeDeposit: function(amount){
    this.balance = this.balance + amount;
    console.log('You deposited ' + amount + '. Your account is now ' + this.balance);
  },

  makeWithdrawal: function(amount){
    if (this.balance - amount > 0) {
      this.balance = this.balance - amount;
      console.log('You withdrew ' + amount + '. Your account is now ' + this.balance);
    } else {
      console.log('Could not withdraw. Your account is now ' + this.balance);
    }
  }
}

var myBank = new BankAccount(100);
myBank.makeDeposit(50);
