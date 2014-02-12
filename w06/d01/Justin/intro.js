window.onload = console.log( "Hello World");

function add(val1, val2){
	return val1 + val2;
}

function sub(val1, val2){
	return val1 - val2;
}

function mul(val1, val2){
	return val1 * val2;
}

function div(val1, val2){
	return val1 / val2;
}

function exp(base, power){
	result = base;
	for ( var i = 1; i < power; i++ ){
		result = result * base
	}
	return result;
}

function sqr(base){
	return base * base;
}

function srt(base){
	return Math.sqrt(base) ;
}

function facorial ( val ){
	console.log( val );
	if( val <= 1 ){
		return 1;
	} else {
		return (val * factorial(val - 1));
	}
}