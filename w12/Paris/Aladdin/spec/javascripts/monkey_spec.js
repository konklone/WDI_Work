function Monkey(name){
  this.name = name;
}

describe('Monkey', function() {
  var monkey;

  beforeEach(function() {
    monkey = new Monkey("Abu");
  });

  it("has a name", function() {
  expect(monkey.name).toBe("Abu");
  });

describe ("#picture", function() {
  it("has a default picture when none is provided", function() {
  expect(monkey.picture()).toBe('http://placeape.com/300/400');
    });

  it ("has a picture", function() {
  var src = "http://imgur.com/monkey";
  monkey.imageUrl = src;
  expect(monkey.picture()).toBe(src);
    });   
});
});

