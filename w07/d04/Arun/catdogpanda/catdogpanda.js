window.onload = function () {
var dog = $('<img />').attr({ 'class': 'dog', 'src': 'http://placedog.com/200/200', 'alt':'MyAlt' }).appendTo($('body'));

var cat = $('<img />').attr({ 'class': 'cat', 'src': 'http://placekitten.com/200/200', 'alt':'MyAlt' }).appendTo($('body'));


var panda =$('<img />').attr({ 'class': 'panda', 'src': 'http://endoriot.com/wp-content/uploads/2013/08/google-panda.jpg', 'alt':'MyAlt' }).appendTo($('body'));

$( "body" ).mousemove(function( event ) {
  var pageCoords = "( " + event.pageX + ", " + event.pageY + " )";
  var clientCoords = "( " + event.clientX + ", " + event.clientY + " )";
  $( "h1" ).text( "( event.pageX, event.pageY ) : " + pageCoords );
  // $( "h1" ).text( "( event.clientX, event.clientY ) : " + clientCoords );
});
}