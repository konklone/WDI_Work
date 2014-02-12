function Monkey(name, url) {
  this.name = name;
}

Monkey.prototype.picture = function() {
  if (this.imageUrl) {
    return this.imageUrl;
  } else {
    return "http://placeape.com/300/300";
  };
}
