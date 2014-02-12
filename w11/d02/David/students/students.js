function Student(name) {
  this.name = name;
  this.skills = [];
  this.zoned_out = false;
}

Student.prototype.learn_skill = function(skill) {
  if ( this.skills.length == 0 ) {
    this.skills.push(skill);
  } else if ( this.skills.indexOf(skill) != -1 ) {
    this.skills.push(skill);
  }
}

Student.prototype.forget_skill = function(skill) {
  var index = this.skills.indexOf(skill);
  this.skills.splice(index, 1);
}

Student.prototype.zone_out = function(option) {
  this.zoned_out = option;
}

var sal = new Student("Sal");
var david = new Student("David");
var arun = new Student("Arun");

function Feeney(name, students) {
  this.name = name;
  this.students = students;
}

Feeney.prototype.add_students = function(student) {
  this.students.push(student);
}

Feeney.prototype.teach = function(skill) {
  _.each(this.students, function(student) {
    if (!student.zoned_out) {
      student.skills.push(skill);
    }
  });
}