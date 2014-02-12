window.onload = function() {
	console.log("Loaded!");
	// displayMovie("Up");
	// getMovie("Up");
}

function getMovie(movie, callback) {
	window.httpRequest = new XMLHttpRequest();

	httpRequest.addEventListener("load", function() {
		callback(JSON.parse(httpRequest.responseText));
	});

	httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
	httpRequest.send();

}

function displayMovie(movie) {
	//get movie data
	//render movie poster to screen

	// var movie = JSON.parse(item);
	var img = document.createElement("img");
	img.src = movie.Poster;
	document.body.appendChild(img);

}

function alertYear(movie) {
	// var movie = JSON.parse(item);
	alert(movie.Title + " was made in " + movie.Year);
}