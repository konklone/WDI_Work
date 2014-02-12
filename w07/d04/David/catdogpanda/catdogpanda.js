
$(function(){
  var imgCat = $('<img>');
  imgCat.addClass('cat');
  imgCat.attr('src', 'http://placekitten.com/200/300');

  var imgDog = $('<img>');
  imgDog.addClass('dog');
  imgDog.attr('src', 'http://www.austinpetsalive.org/wp-content/uploads/2010/09/winnicent.jpg');

  var imgPanda = $('<img>');
  imgPanda.addClass('panda');
  imgPanda.attr('src', 'http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg');

  imgCat.appendTo('body');
  imgDog.appendTo('body');
  imgPanda.appendTo('body');

 $('body').on('mousemove', function(event){
  $('h1').text("X: " + event.pageX + " Y: " + event.pageY);
  $('img.cat').css({'margin-left':event.pageX/2, 'margin-top': event.pageY/4 });
  $('img.dog').css({'margin-left':-event.pageX/2, 'margin-top': -event.pageY/4 });
  $('img.panda').css({'margin-left':-event.pageX/4, 'margin-top': event.pageY/4 });
 });

  $('img').on('click', function(event){
    // makes so after click images still move unless body clicked
    event.stopPropagation();
    $(this).toggleClass( 'border');
  });

 $('body').on('click', function(){
  $(this).off('mousemove');
 })
});