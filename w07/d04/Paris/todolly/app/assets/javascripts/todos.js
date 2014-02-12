$(function(){
  console.log("loaded")
  completeIt();
});

// creates a strikethrough when a task's checkbox is checked by activating the completed css class.
function completeIt() {
  $("li input[type='checkbox']").on("click", function(){
    $(this).parent().toggleClass("completed");


    var todoId = $(this).parent().data("todo-id");
    var completed = $(this).is(":checked");

    // to persist the data...
    $.ajax({
        url: "/todos/" + todoId,
        type: "POST",
        data: {todo: {completed: completed}, _method: 'put'},
        dataType: "json"
    });
  });
}