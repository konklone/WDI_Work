window.load = function() {
  console.log("LOADED!"); 
}

// //WDI Toolkit 

// forEach(arr, action) {
//   for (var i = 0; i < arr.length; i++) {
//   action(arr[i]); 
//   }
// }

// var each = forEach; 

// function map(arr, action){
//   var newArray = []; 

//   each( arr, function(element){
//     newArray.push( action(element)); 
//     }); 
//   return newArray; 
// } 

// map([1,2,3], function(element){
//   newArray.push( action(element) ); 
// }); 

function WDIToolkit(){}

var WTK = new WDIToolkit(); 

WDIToolkit.prototype.forEach = function (arr, action){
  for (var i = 0; i < arr.length; i++) {
  action(arr[i]);  
  }
}

WDIToolkit.prototype.each = WDIToolkit.prototype.forEach; 

WDIToolkit.prototype.map = function(arr,action){
  var newArray = []; 

  this.each( arr, function(element){
    newArray.push( action(element)); 
    }); 
  return newArray; 
}



//In console 
//WTK.each( [1,2,3], function(){} );
//WTK.each( [1,2,3], function(element){console.log(element)} );
//WTK.map( [1,2,3], function(element){return(element * 100);} );

var numbers = [1,2,3,4,5,6]

WDIToolkit.prototype.sample = function(arr){
    var rand = arr[Math.floor(Math.random() * arr.length)];
    return rand; 
}

WDIToolkit.prototype.select = function(arr, action){
  var evenArray = []; 

  this.each( arr, function(element){
    if ( action(element) === true ) {
      evenArray.push(element); 
      } 
  }); 
  return evenArray; 
}


WDIToolkit.prototype.exists = function(arr, action){
  var selects_result = this.select(arr, action); 
  if (selects_result.length > 0) {
    return selects_result[0];
  } else {
    return false; 
  }
}

//in console 
//WTK.exists(["Eeny", "Meeny", "Miny"])
//var listItems = WTK.select( document.all, function(element) {return element.tagName =="li"; });
//WTK.exists( document.all, function(e){ return e.tagName =="IMG";});
//var title = WTK.exists document.all, fucntion(e){reutrn e.tagName == "H1";}); 


