describe('The calculator', function(){

  beforeEach(function(){
    calculator = new Calculator();
    num1 = 2;
    num2 = 3;
  });

  it('correctly adds two numbers', function(){
    var actual = calculator.add(num1, num2);
    var expected = 5;
    expect(actual).toEqual(expected);
  });

  it('correctly subtracts two numbers', function(){
    var actual = calculator.subtract(num1, num2);
    var expected = -1;
    expect(actual).toEqual(expected);
  });

  it('correctly multiplies two numbers', function(){
    var actual = calculator.multiply(num1, num2);
    var expected = 6;
    expect(actual).toEqual(expected);
  });

  it('correctly divides two numbers', function(){
    var num1 = 6;
    var num2 = 2;
    var actual = calculator.divide(num1, num2);
    var expected = 3;
    expect(actual).toEqual(expected);
  });

});
