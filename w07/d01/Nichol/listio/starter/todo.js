//define the objects for the model, TodoList and Item

var TodoList = function (){
  this.list = [];  // a list of all items.
}

var Item = function(text){
  this.text = text;
  this.date = "created at " + moment().format("dddd, MMMM Do YYYY, h:mm:ss a ");
  this.completed = false;
  this.elementHandle = "";
}

//define methods for Item, Complete and Delete
Item.prototype.complete = function(){
  this.completed = true;
}

Item.prototype.delete = function(todolist){
  //what is the index at which the item is in the todolist.list?
  index = _.indexOf(todolist.list, this);

  //ok, now remove it.
  todolist.list.splice(index, 1);
}

//define methods for TodoList, Push
TodoList.prototype.push = function(item){
  this.list.push(item);
}

//onload, do the business!
window.onload = function() {
  console.log("ready to todo!");

  //instantiate a new todo list
  myTodoList = new TodoList();

  // addEventListener to the create button and define all actions associated with creation
  // - specifically store data in the model, create the HTML elements for the display,
  // and associate eventListeners to all buttons for the item.
  
  var addItemHandler = function(event){

    console.log(event);
    var text = document.getElementById("new-task-field").value;
      var item = new Item(text); 
      myTodoList.push(item);
    
      //clear value     
      document.getElementById("new-task-field").value = "";
      
      //create element for displaying the item
      var li = document.createElement("li");
      var div = document.createElement("div");
      var todoItems = document.getElementById("todo-items");
      div.className = "items";
      div.innerHTML = text;

      //create the div for all the actions
      var div2 = document.createElement("div");
      var span = document.createElement("span");
      var complete_button = document.createElement("button");
      var delete_button = document.createElement("button");

      //assign propepr class names
      div2.className = "actions";
      span.className = "meta-data";
      span.innerHTML = item.date; //should be formatted!
      complete_button.className = "complete";
      complete_button.innerHTML = "completed";
      delete_button.className = "delete";
      delete_button.innerHTML = "delete me";

      //add event listeners to each button, associated with the instance of the item.
      complete_button.addEventListener("click", function(){
        //do the model
        item.complete();
        
        //remove from current OL
        li = this.parentElement.parentElement.parentElement;
        li.parentNode.removeChild(li);

        //add to UL
        var completedItems = document.getElementById("completed-items");
        completedItems.appendChild(li);

        //remove complete button
        this.parentElement.children[1].parentNode.removeChild(this.parentElement.children[1]);

      });

      delete_button.addEventListener("click", function(){
        //do the model
        item.delete(myTodoList);

        //update the display
        li = this.parentElement.parentElement.parentElement;
        li.parentNode.removeChild(li);

      });

      //append all the divs for actions
      div2.appendChild(span);
      div2.appendChild(complete_button);
      div2.appendChild(delete_button); 

      //append the item to the OL list
      div.appendChild(div2);
      li.appendChild(div)
      todoItems.appendChild(li);

  }

  //add event listener for clicking on the button
  elAddItem = document.getElementById("add-item");
  elAddItem.addEventListener("click", addItemHandler);
  
  //add event listener for hitting enter while still in the field
  elTextField = document.getElementById("new-task-field")
  elTextField.addEventListener("keypress", function(event){
    if (event.which == 13 || event.keyCode == 13) {
      addItemHandler();
    }
  });
  

}

