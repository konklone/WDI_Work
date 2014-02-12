### Using the constructor method, define a Student
- He/she has a name
- He/she has a list of skills
- He/she can learn a new skill
- He/she can forget (remove the last oldest they learned)

function student(name) {
  this.name = name
  this.skills = []
  

  student.prototype.learnSkills = function(new_skills) {
      new_skills << this.skills 
  }
  
  student.prototype.forgetSkills = function() {
      this.skills.pop

  }
}

### Using object literal notation, define a `feeney` object
- He has a name
- He has students
- He can add students to his list of students
- He can teach a skill to his students

var feeney = {}

feeney.name = "Mr. Feeney";
feeney.students = [];

feeney.add_students = function(new_student){
  new_student << feeney.students
}

feeney.teach_skill = function(skill){
  
}
