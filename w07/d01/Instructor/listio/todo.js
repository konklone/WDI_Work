//It's useful to keep an object that represents our todo app
// We are using this object literal notation (ie not using prototype) since we are only every going to make one instance of this object
var todo_app = {
  //this method will retrieve for us a DOM list of todo items
  todoTasks: function() {
    return document.getElementById('todo-items');
  },
  //this method will retrieve for us a DOM list of completed items
  completedTasks: function() {
    return document.getElementById('completed-items');
    //possile place to store items
  },
  //this method is called when the user submits a new task,
  //it creates the task and passes it to the appendTask method
  createTask: function(text) {
    //first, create a new todo_item
    var task = new TodoItem();
    //next it sets the task using new_task's setTaskText() method
    task.setTaskText(text);
    //pass the task to the appendTask method so that it get's added to the DOM
    this.appendTask(task);
  },
  //this method is used to render a new todoItem as a DOM element and append it to the page
  //the new todoItem object to be rendered is passed as an argument
  appendTask: function(task) {
    //we don't want to add blank tasks
    if(task.task_name.length !== 0) {
      //new_task's render() method returns a DOM element representing a new task,
      //which we append to the end of the DOM list of todo items
      this.todoTasks().appendChild(task.render());
    }
  }
}

//todoItem is an object that we are going to construct every time the user hits
//the 'add-item' button keeping all the relevant methods together under one roof
//it will allow us to keep track of all the DOM manipulation logic for rendering
//new DOM objects to represent new tasks, as well as implement 'complete' and
//'delete' functionality for those tasks
function TodoItem() {
  //this method is used to set the task text that will eventually be rendered out
  this.setTaskText = function(text) {
    this.task_name = text;
  }
  //this method builds and returns a DOM element that will represent the new task
  //it's used by the todo_app object to append this DOM element every time a user
  //clicks the 'add-item' button
  this.render = function() {
    //create all the necessary elements
    var new_task = document.createElement('li');
    var text = document.createElement('div');
    var actions = document.createElement('div');
    var metadata = document.createElement('span');
    //give them all the right CSS classes for styling
    text.className = 'items';
    actions.className = 'actions';
    metadata.className = 'meta-data';

    //the next section will fill in the data and assemble the tasks's DOM element

    //add some useful meta data
    var date = new Date();
    metadata.innerHTML = 'Created on: '+date.toLocaleDateString()+' ';
    actions.appendChild(metadata);

    //create the complete and delete buttons
    actions.appendChild(this.completedButton());
    actions.appendChild(this.deleteButton());

    //fill in and assemble the text object with task's text, some meta data, and
    //the complete & delete buttons
    text.innerHTML = this.task_name;
    text.appendChild(actions);
    //add the text object to the task
    new_task.appendChild(text);

    //return the task DOM object
    return new_task;
  }
  //this method returns the DOM element representing the 'complete' button
  this.completedButton = function() {
    //create a new button
    var button = document.createElement('button');
    //set the CSS class name for styling
    button.className = 'complete';
    //insert the text 'completed' into the <button></button> tags to label our button
    button.innerHTML = 'completed';
    //store the reference to the todoItem object in a variable 'self' because js
    //inner functions loose context, for reference see ch4 of Douglas
    //Crockford's "JavaScript: The Good Parts"
    var self = this;
    //bind the click event to a function that will be called when the user
    //clicks 'complete' in this function we define all the steps that would
    //implement the completion feature
    button.onclick = function(event) {
      //we set up a bunch of useful variables
      var button = event.target;
      //todoItem object has a getTask() method designed find and return the task
      //DOM element for a given click event once we have the task object we want
      //to remove it from the list of todo items and store it in a temporary
      //variable removeChild() returns the DOM object we just removed
      var task = todo_app.todoTasks().removeChild(self.getTask(event));
      //here we find the meta data object and update it's contents to store the completion date
      var metadata = self.getMetaData(event);
      var date = new Date();
      metadata.innerHTML = 'Completed on: '+date.toLocaleDateString()+' ';
      //once the task is complete we don't want to show the complete button
      button.parentNode.removeChild(button);
      //lastly we append the task DOM object to the list of completed items
      todo_app.completedTasks().appendChild(task);
    };
    //return the button DOM element
    return button;
  }
  //this method returns the DOM element representing the 'delete' button
  this.deleteButton = function() {
    //create a new button
    var button = document.createElement('button');
    //set the CSS class name for styling
    button.className = 'delete';
    //insert the text 'delete' into the <button></button> tags to label our button
    button.innerHTML = 'delete';
    //store the reference to the todoItem object in a variable 'self' because js
    //inner functions loose context, for reference see ch4 of Douglas
    //Crockford's "JavaScript: The Good Parts"
    var self = this;
    //bind the click event to a function that will be called when the user clicks 'delete'
    //in this function we define all the steps that would implement the deletion feature
    button.onclick = function(event) {
      //todoItem object has a getTask() method designed find and return the task
      //DOM element for a given click event
      var task = self.getTask(event);
      //once the task is complete we remove it from the DOM tree
      task.parentNode.removeChild(task);
    };
    return button;
  }
  //keeping our code clean and HTML pretty means making useful methods that do
  //all the legwork in this case the DOM structure requires lots of repetitive
  //.parentNode calls to get to the task object itself by passing the click
  //event object to the getTask() method we can return the task object we might
  //want elsewhere
  this.getTask = function(event) {
    return event.target.parentNode.parentNode.parentNode;
  }
  //this method finds the meta data 'span' element
  this.getMetaData = function(event) {
    return event.target.parentNode.getElementsByTagName('span')[0];
  }
}

//after all the setup above it's time to add an event listener to the 'add-button'
window.onload = function() {
  //these elements will be used to get the user's input
  var user_input = document.getElementById('new-task-field');
  var button = document.getElementById('add-item');
  //this function will create a new todo task using the text entered into the field
  //it responds to a mouse click and an 'enter' keypress events
  var inputEvent = function(event) {
    //keyCode of 'enter' is 13, keyCode of leftclick is 0
    if(event.keyCode === 13 || event.keyCode === 0) {
      //pass the input's value into the createTask method that will generate
      //and append a new todo task
      todo_app.createTask(user_input.value);
      //clear the input field
      user_input.value = '';
    }
  }
  //because we want to give the user a choice of pressing 'enter' or clicking on
  //the Add Item button we add our inputEvent function to both types of events
  button.onclick = inputEvent;
  user_input.onkeypress = inputEvent;
}