

var hello = console.log("Hiya");

function WDIToolKit(){}

var WTK = new WDIToolKit();

WDIToolKit.prototype.forEach = function(arr, action) {
  for(i = 0; i < arr.length; i++){
    action(arr[i]);
  }
}

WDIToolKit.prototype.each = WDIToolKit.prototype.forEach

WDIToolKit.prototype.map = function(arr, action) {
  var newArray = [];

    this.each( arr, function(element) {
      newArray.push(action(element) );
    }); 
    return newArray;
}

WDIToolKit.prototype.sample = function(arr) {
  var rand = arr[Math.floor(Math.random() * arr.length)];
  return rand
}

WDIToolKit.prototype.select = function(arr, action){
    var newArray = [];
    this.each( arr, function(element) {
      if (action(element) === true) {
        newArray.push(action(element) );
      }

    });
    return newArray;
};

WDIToolkit.prototype.exists = function(arr, action){
  var selects_result = this.select(arr, action);

  if (selects_result.length > 0) {
    return selects_result[0]
  } else {
  return false;
  };
}

// WDIToolKit.prototype.exists = function(arr, action) {
//   var selects_result = this.select(arr, action);

//   if (selects)
// }

// function forEach(arr, action){
//   for(i = 0; i < arr.length; i++){
//     action(arr[i]);
//   }
// }

// var each = forEach;

// function map(arr, action){
//   var newArray = [];

//     each( arr, function(element) {
//       newArray.push(action(element) );
//     }); 
//     return newArray;
// }

// this is equivelant to in ruby..
// arr.each do |element|
//     newArray.push action(element)
//  end