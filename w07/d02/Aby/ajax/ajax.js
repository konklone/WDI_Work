window.onload = function(){

}

function getMovie(movie_name){

	window.httpRequest = new XMLHttpRequest();


	httpRequest.addEventListener("load", function(){
		displayMovie(httpRequest.responseText);
	});

	httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie_name);
	httpRequest.send();
}

	// console.log("After request.");
	// console.log(httpRequest.responseText);

function displayMovie(item){
	var movie = JSON.parse(item);
	var img = document.createElement("img");
	img.src = movie.Poster;
	document.body.appendChild(img);
}
