window.onload = function() { console.log( "LOADED!" ); }

/* OUR VERY OWN TOOLKIT! */

/* A library of functions that include: 
 *  each() aka ForEach(), map()
 *
 */

function WDIToolKit() {};

WDIToolKit.prototype.forEach = function( ary, action ) {
  for( var i = 0; i < ary.length; i++ ) {
    action(ary[i]);
  };
};

WDIToolKit.prototype.each = WDIToolKit.prototype.forEach;


WDIToolKit.prototype.map = function( ary, action ) {
  var newAry = [];

  this.each( ary, function( elem ) {
    newAry.push( action( elem ) );
  } );

  return newAry;
};

WDIToolKit.prototype.sample = function( ary ) {
  var rand = Math.floor( Math.random() * ( ary.length ) );

  return ary[rand];
};

WDIToolKit.prototype.select = function( ary, action ) {
  var selectedAry = [];

  /* some code */
  this.each( ary, function(elem){
    if( action( elem ) === true ){
      selectedAry.push( elem )
    };
  } );

  return selectedAry;
};

WDIToolKit.prototype.exists = function( ary, action ) {
  var selects_result = this.select( ary, action );

  if ( selects_result.length > 0 ) {
    return selects_result[0];
  } else{
    return false;
  };
};

var WTK = new WDIToolKit();