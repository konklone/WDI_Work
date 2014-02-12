
$(function(){
  console.log("loaded");
  completeIt();
})

function completeIt(){
$("input#completed").on("click", function(){
  $(this).parent().toggleClass("completed");

  var toDoId = $(this).parent().data("todo-id");
  var completed = $(this).is(':checked');
  
  $.ajax({
    url: "/todos/" + toDoId,
    type: "POST",
    data: {todos : {completed: completed}, _method:'put' },
    datatype: "json"
  });
});
}



// function completeIt(){
// $("li input[type='checkbox']").on("click", function(){
//   $(this.parentNode).toggleClass("completed");
// });
// }