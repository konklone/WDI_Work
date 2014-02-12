/* OUR VERY OWN WDI TOOLKIT
*
* A library of functions that include:
* each() aka forEach(), map()
*
*
*/

function WDIToolKit(){}

WDIToolKit.prototype.forEach = function(array, action) {
   for(var i=0; i< array.length; i++) {
      action(array[i]);
   }
}

WDIToolKit.prototype.each = WDIToolKit.prototype.forEach;

WDIToolKit.prototype.map = function(array, action) {
   var newArray = [];

   this.each(array, function(element) {
      newArray.push(action(element));
   });

   return newArray;
}

WDIToolKit.prototype.sample = function(array) {
   var rand = array[Math.floor(Math.random() * array.length)];

   return rand;
}

WDIToolKit.prototype.select = function(array, action) {
   var newArray = [];

   this.each(array, function(element) {
      if(action(element) === true) {
         newArray.push(element);
      }
   });

   return newArray;
}
// Example:
// WTK.select([1, 2, 3, 4], function(e){
//   return e === 3;
// });

WDIToolKit.prototype.exists = function(array, action) {
   var selected = this.select(array, action);
   if(selected.length > 0){
      return selected[0];
   } else {
      return false;
   }
}
// Example:
// WTK.exist([1, 2, 3, 4], function(e){
//   return e === 6;
// });



// Creates an instance of WDIToolKit named WTK for ease of use
var WTK = new WDIToolKit();
