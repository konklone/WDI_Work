
//these will be converted into the unfinished div
var listItems = [];


function makeElem(list) {
  console.log( "MAKE ELEMENT FIRED: " + list );

  //grab the ol todo-items which we will insert all the new list items 
  var todoItems = document.getElementById("todo-items");
  var completeTasks = document.getElementById("completed-items");
  var li = document.createElement("li");
  todoItems.appendChild(li);



  var itemDiv = document.createElement("div");
  itemDiv.setAttribute("class", "items");
  itemDiv.innerHTML = list[list.length - 1];

  var actionDiv = document.createElement("div");
  actionDiv.setAttribute("class", "actions");


  var completeButton = document.createElement("button");
  completeButton.setAttribute("class", "complete");
  completeButton.innerHTML = "complete";

  completeButton.addEventListener("click", function(){
    console.log( "COMPLETE BUTTON EVENT" );
    console.log( li );
    console.log( completeButton );
    completeTasks.appendChild(li);
    actionDiv.removeChild(completeButton);
  });


  deleteButton = document.createElement("button");
  deleteButton.setAttribute("class", "delete");
  deleteButton.innerHTML = "delete";
  deleteButton.addEventListener("click", function(){
    li.parentElement.removeChild(li);
    // completeTasks.removeChild(li);
  });

  var timeSpan = document.createElement("span");
  timeSpan.setAttribute("class", "meta-data");
  var now = new Date();
  var createStamp = "Created on: " + (now.getMonth() + 1) + "/" + now.getDate() + "/" + now.getFullYear();
  timeSpan.innerHTML = createStamp; 


  var todoItems = document.getElementById("todo-items");


  todoItems.appendChild(li);

  li.appendChild(itemDiv);

  itemDiv.appendChild(actionDiv);

  actionDiv.appendChild(timeSpan);
  actionDiv.appendChild(completeButton);
  actionDiv.appendChild(deleteButton);

}



function addItem(elem) {
  listItems.push(elem.value);
  console.log(listItems);
  makeElem(listItems);
}



window.onload = function(){

  // completeTasks = document.getElementById("completed-items");
  // todoItems = document.getElementById("todo-items");
  var div = document.createElement("div");
  var button = document.getElementById("add-item");
  var newTaskField = document.getElementById("new-task-field");
  
  newTaskField.addEventListener('keyup', function(event){
    if (event.which == 13 || event.keyCode == 13) {
      addItem(newTaskField);
      newTaskField.value = "";
    }
  });


  button.addEventListener("click", function(){
    addItem(newTaskField);
    newTaskField.value = "";
  });
}