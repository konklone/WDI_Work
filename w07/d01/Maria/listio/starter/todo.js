var listItems =[];

function makeElem(list){//(list)is just empty intil we call make element and pass it the listItems array on line 37.
  var li = document.createElement("li");//creating li

  var itemDiv = document.createElement("div");//creating div
  itemDiv.setAttribute("class", "items");//creating the class name
  itemDiv.innerHTML = list[list.length -1];//put inside div the last thing in array

  var actionDiv = document.createElement("div");
  actionDiv.setAttribute("class", "actions");

  var completeButton = document.createElement("button");//create button
  completeButton.setAttribute("id", "complete");//give button the complete attribute
  completeButton.innerHTML = "complete"; //label the button 'complete'
  completeButton.addEventListener("click", function(){
    console.log(actionDiv);
    console.log(completeButton);
    actionDiv.removeChild(completeButton);
    completeTasks.appendChild(li);
  });

  deleteButton = document.createElement("button");
  deleteButton.setAttribute("id", "delete");
  deleteButton.innerHTML ="delete";
  deleteButton.addEventListener("click", function(){
    li.parentElement.removeChild(li);
  });

  
  var timeSpan = document.createElement("span");
  timeSpan.innerHTML = new Date();
  
  actionDiv.appendChild(timeSpan);
  actionDiv.appendChild(completeButton);
  actionDiv.appendChild(deleteButton);

  //give todoitems the buttons

  var todoItems = document.getElementById("todo-items");//get the id todo-items
  todoItems.appendChild(li);
  li.appendChild(itemDiv);

  itemDiv.appendChild(actionDiv);
  
}

function addItem(elem){//really important for calling the elements created above in makeElement
    listItems.push(elem.value);
    makeElem(listItems);//pass in the listItems array
}

window.onload = function() {
  completeTasks = document.getElementById("completed-items");
  button = document.getElementById("add-item");
  newTaskField = document.getElementById("new-task-field");
  button.addEventListener("click", function(){
    addItem(newTaskField);
    newTaskField.value = "";
    
  });
};