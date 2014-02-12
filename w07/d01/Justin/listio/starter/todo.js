function addItem () {
	// var text = newTaskField.value;
	// console.log(text);

	var newLi = document.createElement("li");
	
	var itemDiv = document.createElement("div");
	itemDiv.setAttribute("class", "items");
	itemDiv.innerHTML = newTaskField.value;

	var actionDiv = document.createElement("div");
	actionDiv.setAttribute("class", "actions");

	var completeButton = document.createElement("button");
	completeButton.setAttribute("class", "complete");
	completeButton.innerHTML = "completed";


	var deleteButton = document.createElement("button");
	deleteButton.setAttribute("class", "delete");
	deleteButton.innerHTML = "delete";

	var timeSpan = document.createElement("span");
	timeSpan.setAttribute("class", "meta-data");
	var now = new Date();
	var createStamp = "Created on: " + (now.getMonth() + 1) + "/" + now.getDate() + "/" + now.getFullYear();
	timeSpan.innerHTML = createStamp;

	actionDiv.appendChild(timeSpan);
	actionDiv.appendChild(completeButton);
	actionDiv.appendChild(deleteButton);
	itemDiv.appendChild(actionDiv);
	newLi.appendChild(itemDiv);	
	incompleteTasks.appendChild(newLi);

	completeButton.addEventListener("click", function() {
		actionDiv.removeChild(completeButton);
		completeTasks.appendChild(newLi);
	});
	deleteButton.addEventListener("click", function() {
		newLi.parentElement.removeChild(newLi);
	});
};


window.onload = function() {
	button = document.getElementById("add-item");
	newTaskField = document.getElementById("new-task-field");
	incompleteTasks = document.getElementById("todo-items");
	completeTasks = document.getElementById("completed-items");

	button.addEventListener("click", function() {
		addItem();
		newTaskField.value = "";
	});

	newTaskField.addEventListener("keypress", function(event) {
		if (event.which == 13){
			addItem();
			newTaskField.value = "";
		}
	});
};