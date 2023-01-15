
var calculator = {
  add: function(a, b){
    return (a + b);
  },
  subtract: function(a, b){
    return (a - b);
  },
  multiply: function(a, b){
    return (a * b);
  },
  divide: function(a, b){
    return (a / b);
  },
  calc: function(a, b, operation){
    switch (operation){
      case 'add':
        return this.add(a, b);
        break;
      case 'subtract':
        return this.subtract(a, b);
        break;
      case 'multiply':
        return this.multiply(a, b);
        break;
      case 'divide':
        return this.divide(a, b);
        break;
    }
  }
}
