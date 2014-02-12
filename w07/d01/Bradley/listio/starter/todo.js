window.onload = function() {
  newTaskButton = document.querySelector('#add-item');
  newTaskField = document.querySelector('#new-task-field');

  todoItems = document.querySelector('#todo-items');
  completedItems = document.querySelector('#completed-items');

  var counter = 0

  newTaskButton.addEventListener('click', function() {
    counter++;
    newItem(counter);
    newTaskField.value = null;
  });

  newTaskField.addEventListener('keypress', function(e) {
    var key = e.which || e.keyCode;
    if (key == 13) {
      counter++;
      newItem(counter);
      newTaskField.value = null;
    }
  });

  function newItem(id) {
    var li = document.createElement('li');
    li.setAttribute('id', id);
    var itemsdiv = document.createElement('div');
    itemsdiv.setAttribute('class', 'items');
    
    var actiondiv = document.createElement('div');
    actiondiv.setAttribute('class', 'actions');
    
    var span = document.createElement('span');
    span.setAttribute('class', 'meta-data');
    span.innerHTML = "Create on: 11/4/2013 ";
    
    var completedButton = document.createElement('button');
    completedButton.setAttribute('class', 'complete');
    completedButton.innerHTML = "completed";

    var deleteButton = document.createElement('button');
    deleteButton.setAttribute('class', 'delete');
    deleteButton.innerHTML = "delete";

    actiondiv.appendChild(span);
    actiondiv.appendChild(completedButton);
    actiondiv.appendChild(deleteButton);

    itemsdiv.innerHTML = newTaskField.value;
    itemsdiv.appendChild(actiondiv);

    li.appendChild(itemsdiv);

    todoItems.appendChild(li);

    completedButton.addEventListener('click', function() {
      completed(li.id);
    });

    deleteButton.addEventListener('click', function() {
      deleteItem(li.id);
    });
  }

  function deleteItem(id) {
    var item = document.getElementById(id);
    var parent = item.parentElement;
    parent.removeChild(item);
  }

  function completed(id) {
    var item = document.getElementById(id);
    var completedButton = item.querySelector(".complete");
    var parent = completedButton.parentElement;
    parent.removeChild(completedButton);
    completedItems.appendChild(item);
  }
}



