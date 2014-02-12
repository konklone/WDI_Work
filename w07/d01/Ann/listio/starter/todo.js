window.onload = function() {
  console.log("LOADED!"); 
  
  var newTaskButton = document.querySelector("#add-item"); 
  var newTaskField  = document.querySelector("#new-task-field"); 
  var deleteTaskButton = document.querySelector(".delete");

  var listItems = document.querySelector("#todo-items"); 
  var completedItems = document.querySelector("completed_items");
  var counter = 0;

  newTaskField.addEventListener('keypress', function (e) {
    var key = e.which || e.keyCode;
    if (key == 13) { createTask();
    newTaskField.value = null;
    }
  });

function createTask(){

  newTaskButton.addEventListener('click', function(){
      counter++;

      var li = document.createElement("li"); 
      var items = document.createElement("div");
      var taskActions = document.createElement("div"); 
      var span = document.createElement("span"); 
      var completeButton = document.createElement("button");
      var deleteButton = document.createElement("button"); 

      li.id = counter;
      items.className = "items";
      taskActions.className = "actions"; 
      span.className = "meta-data"; 
      completeButton.className = "complete"; 
      deleteButton.className = "delete"; 
`
      completeButton.innerHTML = "complete"; 
      deleteButton.innerHTML = "delete";
      li.innerHTML = newTaskField.value;
      span.innerHTML = "Created on: 11/4"; 
      taskActions.appendChild(deleteButton); 
      taskActions.appendChild(completeButton); 
      taskActions.appendChild(span);
      items.appendChild(taskActions); 
      li.appendChild(items); 
      listItems.appendChild(li); 

      completeButton.addEventListener('click', function(){
        completeItem(li.id); 
        }); 

      deleteButton.addEventListener('click', function(){
        deleteItem(li.id); 
      }); 


      function deleteItem(id){
        var item = document.getElementById(id);
        var list = item.parentElement; 
        list.removeChild(item); 
      }; 

      function completeItem(id){
        var item = document.getElementById(id);
        var completeList = document.querySelector("#completed-items"); 
        completeList.appendChild(item); 
      }; 
    });
  };  
      createTask();  
}


