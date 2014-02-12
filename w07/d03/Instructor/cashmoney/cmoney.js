console.log("C-money enterprises loaded...");

function $(){
  alert("MAKE THAT MONEY!");
}

//window.onload = ?

window.addEventListener('load', $);
window.addEventListener('load', function(){
  document.getElementById("banner").addEventListener('click', $);
});