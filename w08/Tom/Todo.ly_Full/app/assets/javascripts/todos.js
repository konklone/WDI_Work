    $.ajax({
      url: "/todos",
      type: "POST",
      data: "todo[" + $(this).serialize(),
      context: this,
      success: appendTodo
    });
  });
}

function updateTodo(todo, done) {
  $.ajax({
    url: "/todos/" + todo.data("todo-id"),
    type: "POST",
    dataType: 'json',
    data: {_method: "put", todo: {done: done}}
  });
}

function deleteTodo(todo) {
  $.ajax({
    url: "/todos/" + todo.data("todo-id"),
    type: "POST",
    dataType: "json",
    data: {_method: "delete"},
    success: removeTodo,
    context: todo
  });
}

function removeTodo() {
  this.remove();
}

function appendTodo(todo) {
  this.reset();

  var li = $("<li>" + todo.task + "</li>");
  li.append($("<input />", { type: "checkbox" }));
  li.append($("<span>&times;</span>"));
  li.data("todo-id", todo.id);

  $("ul").append(li);

  bindCheckBoxes(li.find("input"));
  bindDeleteButtons(li.find("span"));
}