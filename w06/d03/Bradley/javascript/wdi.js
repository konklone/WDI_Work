window.onload = function() {
  console.log("LOADED!");
}

/* WDI TOOLKIT! */

function WDI() {}

WDI.prototype.forEach = function(arr, action) {
  for(var i = 0; i < arr.length; i++) {
    action(arr[i]);
  }
}

WDI.prototype.each = WDI.prototype.forEach

WDI.prototype.map = function(arr, action) {
  var newArray = [];
  this.each(arr, function(item) {
    newArray.push(action(item));
  });
  return newArray;
}

WDI.prototype.sample = function(arr) {
  var rand_index = Math.floor(Math.random() * arr.length);
  return arr[rand_index];
}

WDI.prototype.select = function(arr, action) {
  var newArray = [];

  this.forEach(arr, function(item) {
    if (action(item)) {
      newArray.push(item);
    }
  });
  return newArray;
}

WDI.prototype.exists = function(arr, action) {
  var newArray = this.select(arr, action);
  if (newArray.length === 0) {
    return false;
  }
  else {
    return newArray[0];
  }
}

var WTK = new WDI

