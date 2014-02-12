function TaskList() {
  this.toDo = [];
  this.completed = [];
}

function Entry(task) {
  this.task = task;
  this.date = new Date;
}

TaskList.prototype.createEntry = function() {
  var task = document.getElementById("new-task-field").value;
  var entry = new Entry(task);
  return entry;
}

TaskList.prototype.addToList = function(list, entry) {
  this[list].push(entry);
}

TaskList.prototype.removeFromList = function(list, entry) {
  var index = this[list].indexOf(entry);
  this[list].splice(index, 1);
}

var createButton = function(type) {
  var button = document.createElement("button");
  button.innerHTML = type;
  button.className = type;
  // return HTML button
  return button;
}

TaskList.prototype.renderList = function(list) {
  var thisTaskList = this;
  var ol = document.getElementById(list);
  
  ol.innerHTML = "";

  for(var i=0; i<this[list].length; i++) {
    var li = document.createElement("li");
    li.innerHTML = this[list][i].task;
    var p = document.createElement("p");
    p.innerHTML = this[list][i].date;
    li.appendChild(p);

    var deleteButton = createButton("delete");
    var completedButton = createButton("completed");
    li.appendChild( deleteButton );
    
    this[list][i].date = new Date;
    ol.appendChild( li );

    if (list === "toDo") {
      thisTaskList.addEventListener(completedButton, this[list][i], "completed");
      li.appendChild( completedButton );
    }

    thisTaskList.addEventListener(deleteButton, this[list][i], "delete");
  }
}

TaskList.prototype.addEventListener = function(button, linked_entry, list) {
  var thisTaskList = this;
  button.addEventListener('click', function() {
    if (list === "completed") { thisTaskList.addToList("completed", linked_entry); }

    thisTaskList.removeFromList("toDo", linked_entry);
    var ol = document.getElementById(button.parentNode.parentNode.id)
    ol.removeChild(button.parentNode);

    if (thisTaskList[list] != undefined ) { thisTaskList.renderList(list); }
  })
}

window.onload = function(){
  var taskList = new TaskList;
  
  var addTaskButton = document.getElementById("add-item");
  addTaskButton.addEventListener('click', function() {
    var entry = taskList.createEntry();

    taskList.addToList("toDo", entry);
    document.getElementById("new-task-field").value = "";
    taskList.renderList("toDo");
  });
}