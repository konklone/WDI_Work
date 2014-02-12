window.onload = console.log("Loaded!");

console.log("Hello World?");

/* 
* add(val1, val2);
* sub(val1, val2);
* mul(val1, val2);
* div(val1, val2);
* exp(base, power);
* sqr(base);
* srt(base);
*/

function add( val1, val2){
	return (val1 + val2)
}

function sub( val1, val2){
	return (val1 - val2)
}

function mul( val1, val2){
	return (val1 * val2)
}

function div( val1, val2){
	return (val1 / val2)
}

function exp( val1, val2){
	if( val2 == 0){
		return 1;
	}
	result = val1;
	for( var i = 1; i < val2, i++ ){
		result = result * val1
	}
	return result;
}








