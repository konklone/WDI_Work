$(function(){
	clock();
})
function setSate(){
	todate = new Date();
	var secSet = $("#second-hand")
	var minSet = $("#minute-hand")
	var hourSet = $("#hour-hand")
		secSet.css("transform", "rotate("+todate.getSeconds()*6+"deg)")
		minSet.css("transform", "rotate("+todate.getMinutes()*6+"deg)");
		hourSet.css("transform", "rotate("+todate.getHours()*30+"deg)");
}
function clock(){
	var sec = $("#second-hand")
	var min = $("#minute-hand")
	var hour = $("#hour-hand")
	var i = 6
	var j = 6
	var k = .5
	setSate();
	
	setInterval(function(){
		sec.css("transform", "rotate("+(i)+"deg)")
		i += 6
		}, 1000)
	setInterval(function(){
		min.css("transform", "rotate("+((todate.getMinutes()*6)+j)+"deg)")
		j += 6
		}, 60000)
	setInterval(function(){
		hour.css("transform", "rotate("+((todate.getHours()*30) + k)+"deg)")
		k += .5
		}, 60000)
}

