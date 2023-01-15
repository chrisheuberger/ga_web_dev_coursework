describe("WDility", function() {

  describe("#first", function(){
    it("should return the first value of an array", function() {
      var actual = WDility.first([2, 3, 5, 4]);
      var expected = 2;
      expect(actual).toEqual(expected);
    });
  });

  describe("#last", function(){
    it("should return the last value of an array", function() {
      var actual = WDility.last([2, 3, 5, 4]);
      var expected = 4;
      expect(actual).toEqual(expected);
    });
  });

  describe("#each", function(){
    it("should return the original array", function() {
      var actual = WDility.each([2, 3, 5, 4, 2], function(){});
      var expected = [2, 3, 5, 4, 2];
      expect(actual).toEqual(expected);
    });
  });

  describe("#map", function(){
    it("should return an array of return values", function() {
      var actual = WDility.map([1, 2, 3], function(element){ return element +1 });
      var expected = [2, 3, 4];
      expect(actual).toEqual(expected);
    });
  });

  describe("#select", function(){
    it("should return an array of values which allow the function to evaluate to true", function() {
      var actual = WDility.select([1, 2, 3, 4, 1], function(element){ return element >2 });
      var expected = [3, 4];
      expect(actual).toEqual(expected);
    });
  });

  describe("#unique", function(){
    it("should return an array of the unique values", function() {
      var actual = WDility.unique([1, 2, 3, 4, 1, 2]);
      var expected = [1, 2, 3, 4];
      expect(actual).toEqual(expected);
    });
  });

  describe("#reduce", function(){
    it("should return the accumulated value", function() {
      var actual = WDility.reduce([1, 2, 3], function(memo, element){ return memo + element });
      var expected = 6;
      expect(actual).toEqual(expected);
    });
  });

});


describe("#include", function(){
  it('should return true/false if a specified value is present', function(){
    var actual = WDility.include([1, 2, 3, 4], 2);
    var expected = true;
    expect(actual).toEqual(expected);
    var actual - WDility.include([1, 2, 3, 4], 5);
    var expected - false;
    expect(actual).toEqual(expected);
  });
});

});
