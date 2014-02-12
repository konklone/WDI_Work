function Student(name) {
  this.name = name;
  this.skills = [];
  this.zonedOut = false;
}
Student.prototype.addSkill = function(skill) {
  if (!_.contains(this.skills, skill) && this.zonedOut === false) {
    this.skills.push(skill);
  }
}

var feeney = {
  "name": "feeney",
  "students": [],
  "addSkill": function(student, skill) {
    student.skills.push(skill);
  }
}

window.onload = function() {

}
