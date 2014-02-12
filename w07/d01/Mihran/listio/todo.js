var toDoItems, completedItems, field, button;

var toDoListArray = [];
var completedListArray = [];
i = 0 ;
l = 0;

window.onload = function(){
  toDoList();
  completedList();
}

function toDoList(){
  toDoItems = document.getElementById("todo-items");
  field = document.getElementById("new-task-field");

  field.addEventListener('keypress', function (e) {
    var key = e.which || e.keyCode;
    if (key == 13) { createNewTask();
    field.value = null;
    }
  });

  button = document.getElementById("add-item");
  button.addEventListener("click", createNewTask);
}

function completedList(){
  completedItems = document.getElementById("completed-items");
}

function createNewTask(){
  if (field.value != "" ) {
    
    newTask = document.createElement("li");
    newTask.id = "newtask"
    toDoItems.appendChild(newTask);
    toDoListArray.push(newTask);
    
    items = document.createElement("div");
    items.className = "items";
    items.innerHTML = field.value;
    newTask.appendChild(items);
    
    actions = document.createElement("div");
    actions.className = "actions";
    items.appendChild(actions);
    
    metadata = document.createElement("span");
    metadata.className = "meta-data";
    metadata.innerHTML = "date will go here!!! ";
    actions.appendChild(metadata);
    
    completeButton = document.createElement("button");
    completeButton.className = "complete";
    completeButton.innerHTML = "completed";
    completeButton.id = "cb_" + i ;
    actions.appendChild(completeButton);

    completeButton.addEventListener("click", function(){
      _.each(toDoListArray, function(li,i){
        li.getElementsByClassName("delete")[0].id="db_" + i ;
        li.getElementsByClassName("complete")[0].id="cb_" + i ;
      });

      var id = parseInt(this.id.split("_")[1]);
      completedListArray.push(toDoListArray[id]);
      completedItems.appendChild(toDoListArray[id]);

      toDoListArray.splice(id, 1);
      i--;
      l++; 
    });

    deleteButton = document.createElement("button");
    deleteButton.className = "delete";
    deleteButton.innerHTML = "delete";
    deleteButton.id = "db_" + i;
    actions.appendChild(deleteButton);

    deleteButton.addEventListener("click", function(){
      var id = parseInt( this.id.split("_")[1] );
      console.log(id);
      toDoItems.removeChild( toDoListArray[id]);
      //console.log("BEFORE SPLICE: " + toDoListArray);
      toDoListArray.splice(id, 1);
      //console.log("AFTER SPLICE: " + toDoListArray);

      _.each(toDoListArray, function(li,i){
        li.getElementsByClassName("delete")[0].id="db_" + i ;
        li.getElementsByClassName("complete")[0].id="cb_" + i ;
      });
      i-- ;
    });

    i++ ;
    field.value = null;
  } 
}


// if the id of the ul is 'completed', change the functionality