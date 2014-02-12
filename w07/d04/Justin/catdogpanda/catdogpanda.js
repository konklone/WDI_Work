$(function() {

	var cat = $('<img>', { 'src': "http://placekitten.com/g/200/300", 'class': "cat" }).appendTo('body');
	
	var dog = $('<img>', { 'src': "http://placedog.com/200/300", 'class': "dog" }).appendTo('body');
	
	var panda = $('<img>', { 'src': "http://wac.450f.edgecastcdn.net/80450F/k99.com/files/2011/01/Panda-200x300.jpg", 'class': "panda" }).appendTo('body');

	// var coords = $("#coords")

	$("body").mousemove(function( event ) {
		$("h1").html(event.pageX + ", " + event.pageY);
		$(".cat").css({"margin-left": event.pageX / 6, "margin-top": event.pageY / 6});
		$(".dog").css({"margin-left": event.pageX / 12, "margin-top": event.pageY / 12});
		$(".panda").css({"margin-left": event.pageX / 18, "margin-top": event.pageY / 18});
	});

	$("img").on('click',function() {
		$(this).toggleClass("border");
	});


});



	// .mousemove(function( event ) {
	// 	console.log(event.pageX + ", " + event.pageY;);
	// };
