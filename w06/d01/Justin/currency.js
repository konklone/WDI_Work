var exchange = 1.6089;

function d2p (dollars) {
	var pounds = dollars / exchange;
	pounds = Math.round(pounds * 100) / 100
	return dollars + " is " + pounds;
}

function p2d (pounds) {
	var dollars = pounds * exchange;
	dollars = Math.round(dollars * 100) / 100
	return pounds + " is " + dollars;
}