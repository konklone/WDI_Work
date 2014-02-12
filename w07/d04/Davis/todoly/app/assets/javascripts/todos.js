$(function() {
  console.log("LOADED");

  completeTask();
});

function completeTask() {
  $("li input[type='checkbox']").click(function(){
    $(this).parent().toggleClass("completed");


    var todoId = $(this).parent().data("todo-id");
    var completed = $(this).is(":checked");

    $.ajax({
      url: "/todos/" + todoId,
      // not all browsers support put/update (shame)
      type: "POST",
      // tell rails we're making put request via _method
      data: {todo: {completed: completed}, _method: 'put' },
      // rails will know its json & already parse the params into hash
      dataType: "json"
    });
  });
}