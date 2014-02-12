$(function(){
  console.log("loaded!")
  completeIt();
});

  
function completeIt(){

  $("li input[type='checkbox']").on("click", function(){
    $(this).parent().toggleClass("completed");

    var taskId = ($(this).parent().data("task-id"));
    var completed = $(this).is(":checked");

    console.log (taskId);

    $.ajax({
      url: "/tasks/" + taskId,
      type: "POST",
      data: {task: {completed: completed}, _method: 'put'},
      dataType: "json"
    })

    })
}