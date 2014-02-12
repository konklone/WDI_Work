window.onload = console.log( "Loaded!" );

function add ( val1, val2 ) {
  return (val1 + val2);
}

function sub ( val1, val2 ) {
  return (val1 - val2);
}

function mult ( val1, val2 ) {
  return (val1 * val2);
}

function div ( val1, val2 ) {
  return (val1 / val2);
}

function hypotenuse( arr1, arr2 ){
  deltax = arr1[0] - arr2[0];
  deltay = arr1[1] - arr2[1];
  return srt( sqr(arr1) + sqr(arr2) );
}

function quadratic( a, b, c ){
  delta = sqr(b) - 4 * a * c;
  if(delta < 0){
    return null;
  } else if (delta === 1){
    return [(-b / (2 * a))];
  } else {
      first =
  }
}