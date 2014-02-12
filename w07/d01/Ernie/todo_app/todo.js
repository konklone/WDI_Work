function TodoItem(){
  this.pendingTask = [];
  this.completedTask = [];
}

TodoItem.prototype.push = function(item) {
  this.pendingTask.push(item);
  this.completedTask.push(item);
};

TodoItem.prototype.pop = function(item) {
  var index = this.pendingTask.indexOf(item);
  if (index !== -1) {
    this.pendingTask.splice
  } else{
    return "No Item Found"
  };
  return item;
};

function appendDiv(newItem, ol) {
 var li = document.createElement('li');
  var div = document.createElement("div");
  div.className = "items";
  div.innerHTML = newItem;
 
  var divAction = document.createElement("div");
  divAction.className = "actions";

  var span = document.createElement('span');
  span.className = 'meta-data';
  
  var deleteButton = document.createElement('button');
  deleteButton.className = 'delete';
  deleteButton.innerHTML = "delete";

  var completedButton = document.createElement('button');
  completedButton.className = 'complete';
  completedButton.innerHTML = 'complete';

  divAction.appendChild(deleteButton);
   deleteButton.addEventListener("click", function() {
  ol.removeChild(li);
});

// move to complete list
  var ul = document.querySelector("ul");
  ul.className = "completed-items";

  buttonDelete.addEventListener("click", function() {
  ul.removeChild(li);

  });
 
  divAction.appendChild(completedButton);
  divAction.appendChild(span);
  div.appendChild(divAction);
  li.appendChild(div);
  ol.appendChild(li);
}

function appendItems(newItem, ol) {
  ol.innerHTML = "";
  WTK.each(newItem.itemContainer, function(item) {
    appendDiv(item, ol);
 });
}


todo = new TodoItem();


function removeItems (div, ol,item) {
  var deleteButton = document.createElement("button");
  deleteButton.className = "delete";
  item.pop(item);
 
}


function loadFunction() {
  console.log("Loaded");
  var ol = document.querySelector("ol#todo-items");
  var button = document.getElementById('add-item');
    button.addEventListener("click", function(e) {
      var input = document.getElementById('new-task-field');
      todo.push(input.value);
    appendItems(todo, ol);
    input.value = "";
  });
   window.appendItems(window.todo, ol);
}

window.onload = loadFunction;

