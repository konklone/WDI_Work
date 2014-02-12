$(function(){
  console.log("LOADED!");
  completeIt();
});

function completeIt() {
  $("li input[type='checkbox']").on("click", function() {
    $(this).parent().toggleClass("completed");

    var todoId = $(this).parent().data("todo-id");
    var completed = $(this).is(":checked");

    $.ajax({
      url: "/todos/" + todoId,
      type: "POST",
      data: { todo: {completed: completed}, _method: 'put' },
      dataType: "json"
    });
  });
}


