window.onload = function(){
  list();
}
  var listItem, button, toDoList, content, removeItem, listed, completeButton, completeList;
  var count = 0;

  
  var removeThis = function(){
    if (removeItem.className == "compdelete"){
      var completely = document.getElementById(this.id);
      completely.childNodes[0].remove();
    }else{
    var item = toDoList.childNodes;
    var spot = document.getElementById(this.id);
    toDoList.childNodes[0].remove();
    }
  };
  
  var completeTask = function(){
    
    var item = toDoList.childNodes;
    var spot = document.getElementById(this.id);
    spot.childNodes[0].childNodes[1].className = "compdelete";
    var b = spot.childNodes[0].childNodes[2].remove();
    completeList.appendChild(spot);
    
  };
  
  var list = function(){
   // gets OL
   toDoList = document.getElementById("todo-items");
   // gets submit button
   button = document.getElementById("add-item");
   completeList = document.getElementById("completed-items");
   
  
   // click event listener for button
  button.addEventListener("click", function(){
    listItem = document.createElement("li");
    listItem.id = count;
    listed = document.createElement("div");
    listed.className = "listed";
//  delete task button 
    removeItem = document.createElement("button");
    removeItem.className = "delete";
    removeItem.id = count;
    removeItem.innerHTML = "REMOVE"
    removeItem.addEventListener("click", removeThis);
// complete task button
    completeButton = document.createElement("button");
    completeButton.className = "complete";
    completeButton.innerHTML = "COMPLETED";
    completeButton.addEventListener("click", completeTask);
    completeButton.id = count;

// content of list item
    content = document.getElementById("new-task-field").value;
    listed.id = count;
    listed.innerHTML = content;
    listed.appendChild(removeItem);
    listed.appendChild(completeButton);
    
    

    listItem.appendChild(listed);
    toDoList.appendChild(listItem);
    count++;
  });

};




