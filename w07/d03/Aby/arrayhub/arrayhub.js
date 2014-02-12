window.onload = function() {

	form = document.getElementById("search-users");
	form.addEventListener("submit", function(e){
		e.preventDefault();
		getUser(form.elements["handle"].value);
	});
}

function getUser(handle){
	window.httpRequest = new XMLHttpRequest();
	httpRequest.addEventListener("load", function(){
		addUser(JSON.parse(httpRequest.responseText));
	});

	httpRequest.open("GET", "https://api.github.com/users/" + handle);
	httpRequest.send();
	}

function addUser(user){
	var div = document.createElement("div");
	div.className = "user";

	var img = document.createElement("div");
	img.src = user.avatar_url;
	div.appendChild(img);

	img.addEventListener('dblclick', function(){
		var grandparent = this.parentNode;
		grandparent.removeChild(this.parentNode);

	});


	var h2 = document.createElement("h2");
	var a = document.createElement("a");
	a.href = user.html_url;
	a.textContent = user.login;
	h2.appendChild(a);
	div.appendChild(h2);

	document.body.appendChild(div);
}


