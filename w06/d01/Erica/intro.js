window.onload = console.log( "Loaded!" );

// add( val1, val2 );
// sub( val1, val2 );
// mul( val1, val2 );
// div( val1, val2 );
// mod( val1, val2 );
// exp( base, power );
// sqr( base );
// sqrt( base )

function add(val1, val2){
  return val1 + val2;
};

function sub(val1, val2){
  return val1 - val2;
};

function mul(val1, val2){
  return val1 * val2;
};

function div(val1, val2){
  return val1 / val2;
};

function mod(val1, val2){
  return (val1 % val2);
};

function exp(base, power)
  if power == 0 {
    return 1
  }
  else{
    result = base;
  }
};

function sqr( base ){
  return base * base;
};

function sqrt( base ){
   return Math.sqrt( base );
}

