window.onload = function(){
  alert( "huzzah!" );
}

/* ------- OUR VERY OWN WDI TOOLKIT! -------
 * A library of functions that include:
 *  forEach() [aka each()], map(),
 *  sample(), select(), and exists()...
 *
 * It is instantiated as WTK.
 */

// by declaring a constructor in BactrianCamelCase
// we are telling the js interpreter to create
// a "prototype" object that we can extend
function WDIToolKit(){}

// we add functions as methods to our prototype object thus:
WDIToolKit.prototype.forEach = function(arr, action) {
  for( var i = 0; i < arr.length; i++ ){
    action(arr[i]); // action() is called with one parameter, so:
    // when we define action we need to make sure that it has
    // and can manipulate that one parameter, ie function(e){...}
  }
}

// aliasing is simple! (we are aliasing from the prototype object)
WDIToolKit.prototype.each = WDIToolKit.prototype.forEach;

// create a new array, where each element is the output of a function
// action(e), where 'e' is each element in arr (in order)
WDIToolKit.prototype.map = function(arr, action) {
  var newArray = [];

  this.each( arr, function(element){
    newArray.push( action(element) );
  });

  return newArray;
}

// return an element from arr at random, if any exist
WDIToolKit.prototype.sample = function(arr) {
  if (arr.length > 0) {
    return arr[Math.floor(Math.random() * arr.length)];
  } else {
    return false;
  }
}

// return an array that is a subset of arr for which each element
// exists in the returning array if and only if the function
// action(e) [where 'e' is each element of arr] returns *true*
WDIToolKit.prototype.select = function(arr, action) {
  var newArray = [];

  this.each(arr, function(element){
    if ( action(element) === true ) {
      newArray.push( element );
    }
  });

  return newArray;
};

// return a single element of a select call (the first) with
// the function action(e) if any exist; otherwise return false
WDIToolKit.prototype.exists = function(arr, action) {
  var selects_result = this.select(arr, action);

  if (selects_result.length > 0) {
    return selects_result[0];
  } else {
    return false;
  }
}

// instantiate the prototype as an object named 'WTK'
var WTK = new WDIToolKit();
