window.onload = function() {
	console.log("loaded");
}

function getMovie(movieTitle, callback) {
	var httpRequest = new XMLHttpRequest();
	httpRequest.addEventListener("load", function(){
		callback(JSON.parse(httpRequest.responseText));
	});
		httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movieTitle);
		httpRequest.send();
}

function displayMovie(movie) {
	var movieData = JSON.parse(item);
	var createImg = document.createElement("img");
	img.src = movieData.Poster;
	document.body.appendChild(img);
}

function alertYear(movie) {
	var movieData = JSON.parse(item);
	alert(movie.Title + " was made in " + movie.Year)
}