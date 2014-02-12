console.log("C-money enterprises loaded...");

// function $(){
//   alert("MAKE THAT MONEY!");
// }

function dollar(messageConcerningMoney){
  alert(messageConcerningMoney);
}

window.onload = $;

// window.addEventListener('load', dollar('CASH MONEY'));
// window.addEventListener('load', $);
// window.addEventListener('load'), function() {
// document.getElementById("banner").addEventListener('click', $);
// }

// this is the jQuery version of window.onload
$(function(){
  dollar("message message message");
});