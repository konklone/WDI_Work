var me = {
   name: "Raleigh", 
   favColor: "teal",
   disneyCharacter: "Rapunzel",
   hi: sayHello,
   disney: myChar
}

//say my name
function sayHello(){
   return "Hello, I'm " + this.name + "!";
}

//Rapunzel in disguise
function myChar(){
   return "Hi, I am similar to " + this.disneyCharacter + ".";
}

for(var currentKey in me){
   console.log(currentKey, me[currentKey]);
}

function forEachObj(obj, action){
   for(var currentKey in me) {
      action(key, obj[key]);
   }
}

function keys(obj){
   var keys = []

   for(var currentKey in me) { 
      key.push(key);
   }
   return keys;
}

//keys(me;)

// var shmoopy = {
//    name: "Shmoopy",
//    onTree: false,
//    speak: function(){
//       return "Hi! I'm " + this.name;
//    },
//    climb: function() {
//       this.onTree = true;
//    }
// }

// var bloopy = {
//    name: "Bloopy",
//    onTree: false,
//    speak: function(){
//       return "Hi! I'm " + this.name;
//    },
//    climb: function(){
//       this.onTree = true;
//    }
// }

function Monkey(name) {
   this.name = name;
   this.onTree = false;
}

Monkey.prototype.speak = function() {
   return "Hi! My name is " + this.name;
}

Monkey.prototype.climb = function() {
   return this.onTree = true;
}

// var droopy = new Monkey("Droopy");