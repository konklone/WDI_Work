window.onload = function() {
	console.log("loaded!");
	submitForm(document.querySelector("form"));
}

function submitForm(formElement) {
	formElement.addEventListener("submit", function(event){
		event.preventDefault();
		console.log("FORM SUBMITTED");
		postData(this);
	});
}

function postData(formElement) {
	var httpRequest = new XMLHttpRequest();

	// httpRequest.addEventListener("load", callback);

	httpRequest.open("POST", "/");

	var serializedData = new FormData(formElement);
	httpRequest.send(serializedData);

}