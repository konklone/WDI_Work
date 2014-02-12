function List() {
  this.tasks = [];
  this.completed = [];
}

var taskList = new List();

List.prototype.initialize = function(){
  this.newTaskBtn = document.getElementById("add-item");
  this.newTaskField = document.getElementById("new-task-field");
  this.todoList = document.getElementById("todo-items");
  this.finishedTasksUl = document.getElementById("completed-items");
  this.formElement = document.getElementById("task-form");
  var self = this;
  console.log("this outside of listener" + this);
  this.formElement.addEventListener('submit', function(event){
    event.preventDefault();
    console.log("this inside of listener" + this);
    self.addTask();
  });
}

List.prototype.addTask = function(){
  console.log("add task function")
  // Add task to list
  var liTask = document.createElement("li");
  var divTask = document.createElement("div");
  divTask.className = "items";
  console.log("new task field" + this.newTaskField.value)
  divTask.innerHTML = this.newTaskField.value;
  liTask.appendChild(divTask);
  this.todoList.appendChild(liTask);
  // store li object in tasks array
  this.tasks.push(liTask);
  console.log("new task index: " + this.tasks.indexOf(liTask) )
  var tasksIndex = this.tasks.indexOf(liTask);
  this.newTaskField.value = "";
  // Create the actions metadata 
  var actionsDiv = document.createElement("div");
  actionsDiv.className = "actions";
  divTask.appendChild(actionsDiv);
  var date = document.createElement("span");
  date.className = "meta-data";
  date.innerHTML = currentDate();
  actionsDiv.appendChild(date);
  // Create buttons
  var completeBtn = document.createElement("button");
  completeBtn.className = "complete";
  completeBtn.innerHTML = "completed"
  actionsDiv.appendChild(completeBtn);
  // Add listener
  var self = this;
  console.log("tasks index before complete button" + tasksIndex);
  completeBtn.addEventListener('click', function(event){
    self.addToCompleted( tasksIndex );
  });
  completeBtn.addEventListener
  var deleteBtn = document.createElement("button");
  deleteBtn.className = "delete";
  deleteBtn.innerHTML = "delete";
  actionsDiv.appendChild(deleteBtn);
  // Add listener
  deleteBtn.addEventListener('click', function(event){
    self.deleteTask( tasksIndex );
  });
}

List.prototype.addToCompleted = function( taskIndex ){
  console.log("add to completed function: ");
  console.log("index of post" + taskIndex );
  var completedTask = this.tasks[taskIndex];
  if (completedTask.parentNode) {
    completedTask.parentNode.removeChild(completedTask);
  }
  var actionsDivElement = (completedTask.getElementsByClassName("actions"))[0];
  console.log("actions div element" + actionsDivElement);
  actionsDivElement.removeChild(actionsDivElement.childNodes[1]);

  this.finishedTasksUl.appendChild(completedTask);
  this.completed.push(completedTask);
  this.tasks.splice( taskIndex ,1);
  // Add listener
  deleteBtn.addEventListener('click', function(event){
    self.deleteTask( tasksIndex );
  });
}

List.prototype.deleteTask = function( taskIndex ){
  console.log("delete function: ");
  console.log(event);
  var deletedTask = this.tasks[taskIndex];
  if (deletedTask.parentNode) {
    deletedTask.parentNode.removeChild(deletedTask);
  }
  this.tasks.splice( taskIndex ,1);
}

List.prototype.deleteCompletedTask = function( taskIndex ){
  console.log("delete function: ");
  console.log(event);
  var deletedTask = this.tasks[taskIndex];
  if (deletedTask.parentNode) {
    deletedTask.parentNode.removeChild(deletedTask);
  }
  this.tasks.splice( taskIndex ,1);
}


function currentDate(){
  var today = new Date();
  var dd = today.getDate();
  var mm = today.getMonth();
  var yyyy = today.getFullYear();
  return mm + "/" + dd + "/" + yyyy;
}

window.onload = function(){
  console.log("loaded");
  taskList.initialize();
}

