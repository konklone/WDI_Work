function ToDoList() {
	this.list_items = [];
}

ToDoList.prototype.push = function(user_item) {
  this.list_items.push(user_item);
} 


function addToDo(user_item, ordered_list){
 
  var li = document.createElement("li"); // <li>
	li.setAttribute("class", "items");
	li.innerHTML = user_item; // <li>innerHTML</li>

	var div = document.createElement("div"); // div for created on date
	div.setAttribute("class", "actions");

	var span = document.createElement("span"); // div for created on date
	span.setAttribute("class", "meta-data");
	// get today's date
  var today = new Date();
  var dd = today.getDate();
  var mm = today.getMonth()+1; //January is 0!
  var yyyy = today.getFullYear();
  if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm} today = mm+'/'+dd+'/'+yyyy;

  span.innerHTML = "Created on: " + today + " ";
   
  var com_button = document.createElement("button"); // Create complete list item button
  com_button.setAttribute("class", "complete");
  com_button.innerHTML = "completed";
	div.appendChild(com_button);

	com_button.addEventListener('click', function() {
		
		var unordered_list = document.getElementById("completed-items");
		var parentLi = div.parentNode;
		ordered_list.removeChild(parentLi);

		var index = window.ToDo.list_items.indexOf(parentLi);
		window.ToDo.list_items.splice(index,1);

		unordered_list.appendChild(parentLi);
		div.removeChild(com_button);

		span.innerHTML = "Completed on " + today + " ";
		div.appendChild(span);
		div.appendChild(del_button);
	});

  var del_button = document.createElement("button"); // Create delete item button
  del_button.setAttribute("class", "delete");
  del_button.innerHTML = "delete";

	del_button.addEventListener('click', function() {

		var parentLi = div.parentNode;
		ordered_list.removeChild(parentLi);

		var index = window.ToDo.list_items.indexOf(parentLi);
		window.ToDo.list_items.splice(index,1);
	});

	div.appendChild(span);
	div.appendChild(com_button);
	div.appendChild(del_button);

	li.appendChild(div);
  ordered_list.appendChild(li);
}

function appendToDo(ToDo, ordered_list){
	ordered_list.innerHTML = "";

	 for( var i = 0; i < ToDo.list_items.length; i++ ){
	   addToDo(ToDo.list_items[i], ordered_list);
	 }

}

window.ToDo = new ToDoList();

function loadList() {
	var ordered_list = document.getElementById("todo-items"); // <ol>
	var input = document.getElementById("add-item"); // <button>
  input.addEventListener('click', function() {
  var item = document.getElementById("new-task-field"); // <input>.value

		window.ToDo.push(item.value);
		window.appendToDo(window.ToDo, ordered_list);
		item.value = "";
   });

	window.appendToDo(window.ToDo, ordered_list);

}
window.onload = loadList;
  

