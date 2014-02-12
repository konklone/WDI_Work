$(function() {
  $('body').append('<img class="cat" src="http://placekitten.com/200/200" />')
  $('body').append('<img class="dog" src="http://placedog.com/200/200" />')
  $('body').append('<img class="panda" src="http://www.chromama.net/wp-content/uploads/2011/09/sad-panda-2-200x200.jpg" />')

  $('body').on('mousemove', function(event) {
    $('h1').text(event.pageX + ", " + event.pageY);
    $('img.cat').css({"margin-left": event.pageX/4, "margin-top": event.pageY/4});
    $('img.dog').css({"margin-left": event.pageX/10, "margin-top": event.pageY/10});
    $('img.panda').css({"margin-left": event.pageX/20, "margin-top": event.pageY/20});
  });

  $("img").click(function(event) {
    event.stopPropagation();
    $( this ).toggleClass( "border");
  });

  $('body').click(function() {
    $('body').off('mousemove');
  })
});