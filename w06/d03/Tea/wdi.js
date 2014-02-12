window.onload = function(){
  alert("LOADED!");
}

/* WDI TOOLKIT OF ROCKSAUCE */

function WDIToolkit(){}

WDIToolkit.prototype.forEach = function(arr, action){
  for( var i = 0; i < arr.length; i++){
    action(arr[i]);
  }
}

WDIToolkit.prototype.each = WDIToolkit.prototype.forEach;

WDIToolkit.prototype.map = function(arr, action){
  var newArray = [];
  this.each( arr, function(element){
    newArray.push( action(element));
  });
  return newArray;
}

WDIToolkit.prototype.sample = function(arr){
  i = Math.floor(Math.random() * (arr.length));
  return arr[i];
}

WDIToolkit.prototype.select = function(arr, action){
  var newArray = [];
  this.each(arr, function(element){
    if (action(element) === true){
      newArray.push(element);
    }
  });
  return newArray;
}

WDIToolkit.prototype.exists = function(arr, action){
  var selects_result = this.select(arr, action);

  if (selects_result.length > 0) {
    return selects_result[0]
  } else {
  return false;
  };
}

var WTK = new WDIToolkit();