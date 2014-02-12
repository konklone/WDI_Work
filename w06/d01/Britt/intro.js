window.onload = console.log( "Loaded!" );

// add( val1, val2 );
// sub( val1, val2 );
// mul( val1, val2 );
// div( val1, val2 );
// mod( val1, val2 );
// exp( base, power );
// sqr( base );
// sqrt( base )

function add( val1, val2 ){
  return val1 + val2;
};

function sub( val1, val2 ){
  return val1 - val2;
};

function mul( val1, val2 ){
  return val1 * val2;
};

function div( val1, val2 ){
  return val1 / val2;
};

function mod( val1, val2 ){
  return val1 % val2;
};

function exp( base, power ){
  if( power == 0 ){
    return 1
  } else{
    result = base;
    for( var i = 1; i < power; i++ ){
      result = result * base
    };
    return result;
  };
};

function sqr( base ){
  return base * base;
};

function sqrt( base ){
  return Math.sqrt( base );
};

function hypotenuse( ary1, ary2 ){
  return sqrt(sqr(ary2[1] - ary1[1]) + sqr(ary2[0] - ary1[0]));
};