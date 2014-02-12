function Student(name){
  this.name = name;
  this.skills = [];
  this.zonedOut = false;
}

Student.prototype.learn = function(skill){
    this.skills.push(skill);
}

Student.prototype.forget = function(){
  if (!(_.contains(this.skills, 3))) { 
    this.skills.pop();
  }
}

Student.prototype.zoneOut = function(){
  this.zonedOut = true;
}

var feeney = {
  name: 'Feeney',
  students: [],
  add: function(newStudent) {
    students.push(newStudent);
  },
  teach: function(student, skill) {
    if (!student.zonedOut) {
      student.learn(skill) }
    else {
      console.log("Student did not retain info!");
    }
  }
}

tea = new Student("Tea");
tea.learn("kindness");
tea.learn("love");

feeney.teach(tea, "life");