// window.onload = function(){
//   console.log("LOADED!");
// };

/* OUR VERY OWN WDI TOOLKIT */
/* 
* A library of functions that include:
*   each() aka forEach(), map()
*
*/
//Below is Kind of a class:
function WDIToolKit(){}

WDIToolKit.prototype.forEach = function (array, action){
 for(var i = 0; i < array.length; i++){
   action(array[i]);
 }
};

WDIToolKit.prototype.each = WDIToolKit.prototype.forEach;


//map takes an array in 
WDIToolKit.prototype.map = function(array, action){
  var newArray = [];

  this.each(array, function(element){
    newArray.push(action(element));
});
  return newArray;
};


var WTK = new WDIToolKit();

WDIToolKit.prototype.sample = function(array){
  var rand = array[Math.floor(Math.random() * array.length)];
return rand;
};

WDIToolKit.prototype.select = function(array, action) {
  var newArray = [];

  this.each(array, function(element) {
    if ( action(element) === true) {
      newArray.push( element );
    }
  return newArray;
  });

//in console to test: WTK.select( ["Eeny","Meeny","Miny","Mo"], function(element){return element.charAt(0) == "M";});

WDIToolKit.prototype.exists = function(array, action) {
  var selects_result.length > 0) {
  return selects_result
}
}

//WTK.exists( ["Eeny","Meeny","Miny","Mo"], function(element){
  return element.char
})

