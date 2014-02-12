var seconds = 0;
var timerId = 0;



function updateTime(){
	seconds++;
	$('#timer').html('Time elapsed:' + seconds);

}

$(function() {



	$('#reset').on('click', function(){
		seconds = 0;
		clearInterval(timerId);
		$('#timer').html("Time Keeper");
	});



	$('#start').on('click', function(){
		$('#timer').html('Time elapsed:' + seconds);
		timerId = setInterval(updateTime, 1000);
	});

	$('#pause').on('click', function(){
		clearInterval(timerId);
	});



});