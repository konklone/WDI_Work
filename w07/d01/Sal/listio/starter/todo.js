function List() {
  this.tasks = []
}

var taskList = new List();

List.prototype.initialize = function() {
  this.newTaskBtn = document.getElementById('add-item')
  this.newTaskField = document.getElementById('new-task-field')
  this.toDoList = document.getElementById('todo-items')
  this.finishedTasksU1 = document.getElementById("completed-items")
  var self = this;
  this.newTaskBtn.addEventListener('click', function(event) {
    self.addTask();
  });
}

List.prototype.addTask = function() {
  // create elements
  var liTask = document.createElement("li")
  var divTask = document.createElement("div");
  divTask.className = "items";
  var actionsDiv = document.createElement('div')
  actionsDiv.className = "actions"
  
  //give task field value to div task from field
  divTask.innerHTML = this.newTaskField.value; 

  //append stuff to stuff 
  liTask.appendChild(divTask);
  divTask.appendChild(actionsDiv);
  this.toDoList.appendChild(liTask);

  //push the litask element to the array
  this.tasks.push(liTask);

  //get task index of litask element 
  var tasksIndex = this.tasks.indexOf(liTask);

  //create date element 
  var date = document.createElement("span"); 
  date.className = "meta-data";
  date.innerHTML = currentDate();

  //append date to actions div 
  actionsDiv.appendChild(date);

  // complete button listener
  var completeButton = document.createElement("button");
  completeButton.className = "complete";
  completeButton.innerHTML = "Completed"
  actionsDiv.appendChild(completeButton);

  // complete button listener
  var self = this;
  completeButton.addEventListener('click', function(event) {
    self.addToCompleted(tasksIndex);
  });

  //create delete button
  var deleteButton = document.createElement("button");
  deleteButton.className = "delete";
  deleteButton.innerHTML = "Delete";
  actionsDiv.appendChild(deleteButton);

  // delete button listener
  deleteButton.addEventListener('click', function(event) {
    self.deleteTask(tasksIndex);
  });
}

List.prototype.addToCompleted = function(taskIndex) {
  //find index of task element
  var completedTask = this.tasks[taskIndex]
  // find complete button and append to finished tasks UL 
  var completeButton = document.getElementsByClassName('complete')
  if(completedTask.parentNode) {
    completedTask.parentNode.removeChild(completedTask);
    this.finishedTasksU1.appendChild(completedTask);
  }
  //get rid of completed button after moving to completed list
  var actionsDivElement = document.querySelector("div.actions");
  var com_button = document.querySelector("button.complete");
  actionsDivElement.removeChild(com_button);
}

List.prototype.deleteTask = function(taskIndex) {
  var deletedTask = this.tasks[taskIndex]
  if(deletedTask.parentNode) {
    deletedTask.parentNode.removeChild(deletedTask);
  }
}

function currentDate() {
  var today = new Date();
  var dd = today.getDate();
  var mm = today.getMonth();
  var yyyy = today.getFullYear();
  return mm + "/" + dd + "/" + yyyy; 
}

window.onload = function() {
  console.log("Loaded")
  taskList.initialize(); 
}
