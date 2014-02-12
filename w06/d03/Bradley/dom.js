window.onload = function() {
  console.log('Are we ready?');

  var cheesy = document.getElementById("add-cheese");

  cheesy.onclick = function(event) {
    alert("now we're ready!");
  }
}