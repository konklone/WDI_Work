window.onload = function(){
  console.log("ooooooh");

  ghouls.ghoulAppendLi();
  

  //get button
  var elGhoulifyButton = document.getElementById("ghoulify_button");

  //add listener
  elGhoulifyButton.addEventListener("click", function(){
    name = document.getElementById('ghoul_name').value;
    ghouls.push(name);
    ghouls.ghoulAppendLi();
    document.getElementById('ghoul_name').value = "";
    document.getElementById('ghoul_name').placeholder = prompt[_.random(0, prompt.length-1)];
  }, false);


} // end of window.onload

function ghoulList(){
  this.list = [];
}

ghoulList.prototype.push = function(name){
  this.list.push(name);
  return this.list;
}

ghoulList.prototype.collection = function(){
  for (var i = 0; i<this.list.length; i++){
    console.log(this.list[i]);
  }
}

ghoulList.prototype.ghoulAppendLi = function(){
  document.querySelector("ul.containment-unit").innerHTML = "";
  for (var i=0; i<this.list.length; i++ ) {
    appendLi(this.list[i]);
  }
}
  
var ghouls = new ghoulList();
ghouls.push("Nichol");
ghouls.push("James");
ghouls.push("bob");

function changeName(name){
  document.querySelector("ul.containment-unit li").innerHTML = name;
}

//document.querySelector("ul.containment-unit").appendChild(li);

function appendLi (string){
  li = document.createElement("li");
  li.innerHTML = string;
  document.querySelector("ul.containment-unit").appendChild(li);
}

var prompt = ["get em!", "who's next?!", "on your right!", "containify, god damn it!", "ghoul.ly ghoul.ly", "eat your brains!", "zombie!"];

/*

function(e){
  e.preventDefault();
} 

(overrides the action of the form)


//experiment on getting values out by using different getElement statements

test = document.getElementsByName("ghoulName");
test2 = document.querySelector("form.add-ghouls");
test3 = document.getElementsByClassName("add-ghouls");

test[0].value
test2.elements["ghoulName"].value;
test3[0].elements[0].value




*/