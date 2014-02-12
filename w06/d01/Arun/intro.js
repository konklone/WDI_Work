window.onload = console.log( "Loaded!");

add(val1 + val2)

function add( val1, val2){
	return val1 + val2;
}

function sub( val1, val2){
	return val1 - val2;
}

function multiply( val1, val2){
	return val1 * val2;
}

function divide( val1, val2){
	return val1 / val2;
}

function exp( val1, val2){
	if( val2 == 0 ){
		return 1;
	}
	result = val1;
	for( var i = 1; i < val2; i++ ){
		result = result * val1
	}
	return result;
}

function sqr( base ){
	return exp( base, 2 );
}

function srt( base ){
	Math.sqrt( base );
}

function hypotenuse( arr1, arr2){
deltax = arr1[0] - arr2[0];
deltay = arr1[1] - arr2[1];

return srt( sqr(deltax) + sqr(deltay) );
}

function quadratic(a, b, c){
	delta = sqr(b) - 4 * a * c;
	if( delta < 0 ) {
		return null;
	}else if (delta === 1){
		return ([-b / (2 * a))];
	}else {
		first = ((-b + delta)/(2*a));
		second = ((-b - delta)/(2*a));
		return [first, second];
	}
}

