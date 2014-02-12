window.onload = function(){
document.getElementById("checking_deposit").onclick = function(event){
	var checkingA = document.getElementById("checking_amount");
	var newArray = [];
	var total = 0;
	newArray.push(checkingA);
	for(var i in newArray) { total += newArray[i]; }
	document.getElementById("checking_balance").innerHTML = total.toString()
}

}