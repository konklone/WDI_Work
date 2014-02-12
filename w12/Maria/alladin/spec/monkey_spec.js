describe("Monkey", function() {
  var monkey;

  beforeEach(function() {
    monkey = new Monkey("Abu");
  });

  it("has a name", function() {
    expect(monkey.name).toBe("Abu");
  });

//this will insure that there is a default image
  describe("#picture", function() {
    it("has a default pic of a monkey when none is provided", function(){
      expect(monkey.picture()).toBe("http://placeape.com/300/300");
    });

    it("has a monkey-supplied picture", function() {
      var src = "http://placeape.com/300/300";

      monkey.imageURL = src;
      
      expect(monkey.picture()).toBe(src);
    });
  });
});