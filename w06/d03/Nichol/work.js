
/* Our Toolkit */

function WDIToolKit(){}

/* define forEach */
WDIToolKit.prototype.forEach = function(arr, action){
  for( var i = 0; i < arr.length; i++){
    action(arr[i]);
  }
}

/* alias function */
WDIToolKit.prototype.each = WDIToolKit.prototype.forEach;

/* define map */
WDIToolKit.prototype.map = function (arr, action){
  var newArray = [];

  this.each(arr, function(element){
    newArray.push( action(element));
  });
  return newArray;
}

WDIToolKit.prototype.sample = function(arr){
  //select random number between 0 and arr.length
  i = Math.floor(Math.random()*arr.length);
  return arr[i];
}

WDIToolKit.prototype.select = function(arr, action){
  var newArray = [];

  this.each(arr, function(element){
    if (action(element)) {
      newArray.push( element );
    }
  });

  return newArray;
}

WDIToolKit.prototype.exits = function(arr, action){
  test = this.select(arr, action);
  //if length > 0
  return test[0];
}

var WTK = new WDIToolKit();