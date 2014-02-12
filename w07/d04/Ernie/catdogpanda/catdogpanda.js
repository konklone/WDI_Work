$(function () {

  var cat = $("<img class = 'cat' src= http://placekitten.com/200/200 />");
  $("body").append(cat);

  var dog = $("<img class = 'dog' src= 'http://placedog.com/200/200' />");
  $('body').append(dog);

  var panda = $("<img class ='panda' src='http://media.npr.org/assets/img/2012/01/04/ap991215013' />")
  $('body').append(panda);


  $( "body" ).mousemove(function( event ) {
  msg = (event.pageX + ", " + event.pageY);
  $('#coords').text(msg);
  $('.cat').css({'margin-left': event.pageX/4, 'margin-top': event.pageY / 4});
  $('.dog').css({'margin-left': event.pageX/10, 'margin-top': event.pageY / 10});
  $('.panda').css({'margin-left': event.pageX/20, 'margin-top': event.pageY / 20});
  });

  $('img').on('click', function(event){
    event.stopPropagation();  
    $(this).toggleClass('border');
  });
  
  $('body').on('click', function ( event ) {
    $('body').off('mousemove');
  });

});