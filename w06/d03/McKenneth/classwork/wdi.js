// window.onload = function(){
//   console.log("Loaded!!!!!!!!")
// }

/* Our vewy own WDI toolkit */
/* A library of functions that include
* each() aka forEach(), map()
*
*
*
*/

function WDITools(){}

WDITools.prototype.forEach = function(arr, action) {
  for(var i = 0; i < arr.length; i++){
    action(arr[i]);
  }
}

WDITools.prototype.each = WDITools.prototype.forEach;

WDITools.prototype.map= function(arr, action) {
  var newArray = [];

  this.each(arr, function(element){
    newArray.push(action(element));
  });

  return newArray;
}
// returns one element at random
WDITools.prototype.sample = function(arr){
  var i = Math.floor((Math.random()*arr.length));
  return arr[i]; 
}


/* returns a new array where each element was in arr AND
* the result of passing it to action (element) is 'true'
*/
WDITools.prototype.select = function(arr, action){
  var outputArray = [];

  this.each(arr, function(item){
    if (action(item) === true) {
      outputArray.push(item); 
    }
  });
  return outputArray;
}

// 
WDITools.prototype.exists = function(arr, action){
   var selects_result = this.select(arr, action);

  if (selects_result.length > 0) {
    return selects_result[0];
  } else {
    return false;
  }
}


var WTK = new WDITools;