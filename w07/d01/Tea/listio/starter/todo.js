/*********** THE MODEL! ************/
var toDoList = [];
var finishedItems = [];
var i = 0;
/***********************************/

window.onload = function(){

var addItemButton = document.getElementById("add-item");
var itemInput = document.getElementById("new-task-field");

addItemButton.addEventListener('click', function(e){
  e.preventDefault();
  var task = itemInput.value;
  addTask(task);
  i++;
  itemInput.value="";
});

var ol = window.document.getElementById("todo-items");
var ul = window.document.getElementById("completed-items");


function addTask(name){

  // create the elements that make up the todo item
  var div = window.document.createElement("div");
  var li = window.document.createElement("li");
  var complete = window.document.createElement("button");
  var remove = window.document.createElement("button");
  var span = window.document.createElement("span");

  // fill the todo item's elements
  remove.innerHTML = "remove";
  remove.className = "delete";
  complete.innerHTML = "complete";
  complete.className = "complete";
  li.innerHTML = name;
  span.innerHTML = getDate();
  span.className = "meta-data";
  div.id = i;

  // append the todo item's elements together
  div.appendChild(span);
  div.appendChild(li);
  div.appendChild(remove);
  div.appendChild(complete);

  // add the listener to the item's complete button
  complete.addEventListener('click', function(){
    // remove from To Do
    // deleteFromList(toDoList,div.id);
    removeFromDom(div);
    // add to Finished
    addToFinished(div);
  });

  remove.addEventListener('click', function(){
    removeFromDom(div);
  })
  // add the item to the MODEL and to the PAGE!
  // toDoList.push(div);
  ol.appendChild(div);
}

// function deleteFromList(list, divId){
//   list.splice(divId);
// }

function removeFromDom(child){
    child.parentNode.removeChild(child);
}

function addToFinished(item){
  // add to finishedItems array
  // finishedItems.push(item);
  // append to Finished List 
  ul.appendChild(item);

}

function getDate(){
  var date = new Date();
  var day = date.getDate();
  var month = date.getMonth();
  var year = date.getFullYear();
  return(day + "-" + month + "-" + year)
}

// function displayCompleted(){
// var li = window.document.createElement("li");
// var ul = window.document.getElementById("completed-items");
// for(i = 0; i<finishedItems; i++){
//   li.innerHTML = finishedItems[i];
//   ul.appendChild(li);
// };

// }

}