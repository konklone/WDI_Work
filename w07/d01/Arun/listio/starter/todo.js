function Todo() {
	this.unfinished = [];
	this.completed = [];
}

var list = new Todo();

var unfinisharr = list.unfinished


Todo.prototype.initialize = function() {
	this.orderedList = document.getElementById("todo-items");
	this.textInput = document.getElementById("new-task-field");
	this.submitButton = document.getElementById("add-item");
	var self = this;
	this.submitButton.addEventListener("click", function(event){
		self.addItem();
	});
}



Todo.prototype.addItem = function() {
	console.log("run add item func");
	var insertDiv =  document.createElement("div");
	insertDiv.className = "items";
	var insertLi = document.createElement("li");
	console.log(this.orderedList)
	insertLi.appendChild(insertDiv);
	insertDiv.innerHTML = this.textInput.value;
	this.orderedList.appendChild(insertLi);
	this.unfinished.push(insertLi);
	var taskIndex = this.unfinished.indexOf(insertLi);
	var actionDiv = document.createElement("div");
	actionDiv.className = "actions";
	//Create buttons
	insertDiv.appendChild(actionDiv);
	var createSpan = document.createElement("span");
	createSpan.className = "meta-data";
	createSpan.innerHTML = currentDate();
	actionDiv.appendChild(createSpan);
	var self = this;
	var completeButton = document.createElement("button");
	completeButton.className = "complete";
	completeButton.innerHTML = "completed";
	actionDiv.appendChild(completeButton);
	completeButton.addEventListener("click", function(event){
		self.addToCompleted(taskIndex);
	})


	var deleteButton = document.createElement("button");
	deleteButton.className = "delete";
	deleteButton.innerHTML = "delete";
	actionDiv.appendChild(deleteButton);
	deleteButton.addEventListener("click", function(event){
		self.deleteTask(taskIndex);
	})
}


Todo.prototype.addToCompleted = function(index) {
	var completedList = document.getElementById("completed-items");
	var completedTask = this.unfinished[index];
	list.completed.push(completedTask);
	completedList.appendChild(completedTask);

	console.log("completed function")
	console.log(index);;

}

Todo.prototype.deleteTask = function(index) {
	var ulList = document.getElementById("completed-items");
	ulList.removeChild(this.unfinished[index]);
	this.unfinished.splice(index, 1);


	console.log("deleted function");
	console.log(index);

}


function currentDate(){
  var today = new Date();
  var dd = today.getDate();
  var mm = today.getMonth();
  var yyyy = today.getFullYear();
  return mm + "/" + dd + "/" + yyyy;
}


window.onload = function(){
		list.initialize();
}
/* 
 * Input a letter
 * See letters guessed
 * see incorrect guesses and decrement
 * see how many letters in word
 * fill in letter i've guessed correctly
 * give up
 * Reset
 * won

*/


