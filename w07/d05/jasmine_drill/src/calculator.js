function Calculator(){
};

Calculator.prototype = {

  add: function(num1, num2){
    return num1 + num2;
  },

  subtract: function(num1, num2){
    return num1 - num2;
  },

  multiply: function(num1, num2){
    return num1 * num2;
  },

  divide: function(num1, num2){
    return num1 / num2;
  }
}
