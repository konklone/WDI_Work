$(function(){

	var cat = $("<img class= 'cat' src= 'http://jasonlefkowitz.net/wp-content/uploads/2013/07/cats-16140154-1920-1080.jpg'/>");
	$("body").append(cat);

	var dog = $("<img class= 'dog' src='http://www.hdwallpapersinn.com/wp-content/uploads/2013/09/male-boxer.jpg'/>");
	$("body").append(dog);

	var panda = $("<img class= 'panda' src='http://img.timeinc.net/time/photoessays/2011/panda_wolong/panda_wolong_01.jpg' />");
	$("body").append(panda);

	$("body").on('mousemove', function(event){
		var msg = "(" + event.pageX + "," + event.pageY + ")";
		$("#coords").text(msg);
		$(".cat").css({"margin-left": event.pageX/4, "margin-top": event.pageY/4});
		$(".dog").css({"margin-left": event.pageX/10, "margin-top": event.pageY/10});
		$(".panda").css({"margin-left": event.pageX/20, "margin-top": event.pageY/20});
	});

	$('img').on('click', function(){
		$(this).toggleClass("border");

	});

});