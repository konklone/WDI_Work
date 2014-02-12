window.onload = function(){
  console.log("load")
}

function Student(name, skills){
  this.name = name;
  this.skills = [];
}

Student.prototype.learnSkill = function(skill){
  this.skill.push(skills);

};

Student.prototype.forgetSkill = function(skill){
  this.skill.pop(skills);
};


var feeney = {
  students : [],
  addStudent : function(student){
    this.students.push(student);
  },
  teach : function(student,skill){
    student.learn(skill);
  },
};