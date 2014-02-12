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
  this.skills.shift();
}

var julie = new Student("Julie");
var maria = new Student("Maria");

// ### Using object literal notation, define a `feeney` object
// - He has a name
// - He has students
// - He can add students to his list of students
// - He can teach a skill to his students


var feeney = { name: "Feeney",   

               students: [], 

               addStudents: function(studentName) {
                 this.students.push(studentName);
               },

               teachSkill: function(skillName) {
                  _.each(this.students, function(student){
                    student.learn(skillName);
                    return this.students;
                  });
                  
               }
                 
             }; 