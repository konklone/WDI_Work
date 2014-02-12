// ### Using the constructor method, define a Student
// - He/she has a name
// - He/she has a list of skills
// - He/she can learn a new skill
// - He/she can forget (remove the last oldest they learned)

function Student(name){
  this.name = name;
  this.skills = [];
}

Student.prototype.learn = function(skill){
  this.skills.push(skill);
}

Student.prototype.forget = function(){
  this.skills.pop();
}

Student.prototype.zoneOut = function(){
  this.learn = function(skill){
  }
}

mihran = new Student("Mihran");
mihran.learn("Ruby");
mihran.learn("Javascript");
mihran.learn("Procs, Blocs and Lambdas");
mihran.forget();

feeney = {
  students : [],
  addStudent : function(student){
    this.students.push(student);
  },
  teach : function(student,skill){
    student.learn(skill);
  }
}