window.onload = function() {

form = document.getElementById("search-users");
form.addEventListener("submit", function(event){
	event.preventDefault();
	getUser(form.elements["handle"].value);
})

}

function getUser(user, callback) {
	var httpRequest = new XMLHttpRequest();
	httpRequest.addEventListener("load", function(){
		callback(httpRequest.responseText);
	});
		httpRequest.open("GET", "https://api.github.com/users/" + user);
		httpRequest.send();
}

function displayUser(item) {
	var userData = JSON.parse(item);
	var createDiv = document.createElement("div");
	var createImg = document.createElement("img");
	var createH2 = document.createElement("h2");
	createDiv.className = "user";
	createDiv.innerHTML = userData.login
	createImg.src = userData.avatar_url;
	document.body.appendChild(createDiv)
	createDiv.appendChild(createImg);
}

img.addEventListener("dbclick", function(){
	document.body.removeChild(this.parentNode);

});

img.addEventListener("dbclick", function(){
	var grandParent = this.parentNode.parentNode;
	grandParent.removeChild(this.parentNode);
})