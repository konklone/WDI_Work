window.onload = function() {
console.log("LOADED");
}

// OUR VERY OWN WDI TOOLKIT! 

// A library of functions that include:
// each() aka forEach (), map()

function WDIToolKit(){
  WDIToolKit.prototype.forEach = function(arr, action) {
    for ( var i = 0; i < arr.length; i+++){
      action(arr[i]);
    }
  }

WDIToolKit.prototype.each = WDIToolKit.prototype.forEach
WDIToolKit.prototype.map = function(arr, action) {
  var newArray = [];

  this.each ( arr, function(element) {
    newArray.push (action(element) );
  });
  return newArray;
}

WDIToolKit.prototype.exists = function(arr, action) {
  var selects_result = this.select(arr, action);

  if (selects_result.length > 0) {

  }
  return false;
}

var WTK = new WDIToolKit;


