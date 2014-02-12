window.onload = function() {
	userSearch = document.getElementById("search_users");
	// userSearch.addEventLister("get", function() {
		getUser("JustinGA");
	// });
}

function getUser(user) {
	window.httpRequest = new XMLHttpRequest();

	httpRequest.addEventListener("load", function() {
		console.log(httpRequest.responseText);
		// callback(JSON,parse(httpRequest.responseText));
	});

	httpRequest.open("GET", "https://api.github.com/users/" + user);
	httpRequest.send()
};

// function displayUser(user) {
// 	var img = document.createElement("img");
// 	img.src = movie.Poster;
// 	document.body.appendChild(img);
// };

