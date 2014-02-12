describe("Monkey", function() {
  var monkey;

  beforeEach(function) {
    monkey = new Monkey("Abu");
});

  it("has a name", function() {
    expect(monkey.name).toBe("Abu");
 });

describe("#picture", function(){ 

  it("has a default picture when none is provided", function (){
    expect(monkey.url).toBe("http://placeape.com/300/300");
  });

  it("has a monkey-supplied picture", 
    function() {
    var src = "http://imgur.com/monkey";
    monkey.imageUrl = src;
    expect(monkey.picture().toBe(src);
    });
  });
});


