
var Student = function(name){
  this.name = name;
  this.skills = [];
  this.zonedout = false;
}

Student.prototype.learn = function(skill){
  this.skills.push(skill);
  this.skills = _.uniq(this.skills);
}

Student.prototype.forget = function(skill){
  this.skills.pop();
}

Student.prototype.zoneout = function(){
  this.zonedout = true;
}

Student.prototype.concentrate = function(){
  this.zonedout = false;
}

var Feeney = {name: "Bob", students: []};

Feeney.enroll = function(student) { this.students.push(student)}

Feeney.teach = function(skill) {
  for (i=0; i<this.students.length; i++){
    if (this.students[i].zonedout == false) {
      this.students[i].learn(skill);  
    }
    
  }
}


window.onload = function(){
  console.log("Let's learn!");

  student1 = new Student("nichol");
  student2 = new Student("james");

}
