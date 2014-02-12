function ToDoList() {
  this.list_items = [];
}

ToDoList.prototype.pushItem = function(user_item) {
  this.list_items.push(user_item);
} 


function addToDo(user_item, ordered_list){
   var li = document.createElement("li"); // <li>
   li.setAttribute("class", "items");
   li.innerHTML = user_item; // <li>innerHTML</li>

   var div = document.createElement("div"); // <div>
   div.setAttribute("class", "actions");
   var span = document.createElement("span"); // <span>
   span.setAttribute("class", "meta-data");

   // get today's date
   var today = new Date();
   var dd = today.getDate();
   var mm = today.getMonth()+1; //January is 0!
   var yyyy = today.getFullYear();
   if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm} today = mm+'/'+dd+'/'+yyyy;

   span.innerHTML = "Created on: " + today + " ";
   div.appendChild(span);

   var com_button = document.createElement("button"); // <button>
   com_button.setAttribute("class", "complete");
   com_button.innerHTML = "completed";
   div.appendChild(com_button);

   com_button.addEventListener('click', function() {
      // move to <ul id="completed-items"></ul>
      var unordered_list = document.getElementById("completed-items"); // <ul>
      var parentLi = div.parentNode;
      ordered_list.removeChild(parentLi);

      var index = window.toDo.list_items.indexOf(parentLi);
      window.toDo.list_items.splice(index,1);

      unordered_list.appendChild(parentLi);
      div.removeChild(com_button);

      span.innerHTML = "Completed on: " + today + " ";
      div.appendChild(span);
      div.appendChild(del_button);
   });

   var del_button = document.createElement("button"); // <button>
   del_button.setAttribute("class", "delete");
   del_button.innerHTML = "delete";
   div.appendChild(del_button);

   del_button.addEventListener('click', function() {
      // remove from <ol id="todo-items"></ol>
      var parentLi = div.parentNode;
      ordered_list.removeChild(parentLi);

      var index = window.toDo.list_items.indexOf(parentLi);
      window.toDo.list_items.splice(index,1);
   });

   li.appendChild(div);
   ordered_list.appendChild(li);
}

function appendToDo(toDo, ordered_list){
   ordered_list.innerHTML = "";

   for( var i = 0; i < toDo.list_items.length; i++ ){
      addToDo(toDo.list_items[i], ordered_list);
   }
}

window.toDo = new ToDoList();


function loadList() {
   var ordered_list = document.getElementById("todo-items"); // <ol>

   var input = document.getElementById("add-item"); // <button>
   input.addEventListener('click', function() {
      var item = document.getElementById("new-task-field"); // <input>

      window.toDo.pushItem(item.value); // <input>.value
      window.appendToDo(window.toDo, ordered_list);
      item.value = "";
   });

   window.appendToDo(window.toDo, ordered_list);
}

window.onload = loadList;

