function dollarsToPounds( dollar ){
	var d = dollar
	var exchange = 1.6142
	return (d / exchange).toFixed(2);
}

function poundsToDollar( pounds ){
	var p = pounds
	var exchange = 1.6142
	return ( p * exchange ).toFixed(2);
}