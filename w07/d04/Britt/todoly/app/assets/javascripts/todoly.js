$( function(){
  console.log("loaded.");
  toggleCompleted();
})

function toggleCompleted(){
  $("li input[type='checkbox']").on("click", function(){
    $(this).parent().toggleClass("completed");

    console.log( $(this).parent().data("todo-id") )
    var todoId = $(this).parent().data("todo-id")
    var completedBoolean = $(this).is(":checked");
    $.ajax({
      url: "todos/" + todoId,
      type: "post",
      data: { todo: {completed: completedBoolean}, _method: "put"},
      dataType: "json"
    });
  });
}