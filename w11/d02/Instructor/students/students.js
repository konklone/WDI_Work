function Student(name) {
  this.name = name;
  this.skills = [];
}

Student.prototype.learn = function(topic) {
  this.skills.push(topic);
}

Student.prototype.forget = function() {
  this.skills.pop();
}

var feeney = {
  name: "Mr Feeney",
  students: [],
  addStudent: function(student) {
    this.students.push(student);
  },
  teach: function(topic) {
    _.each(this.students, function(student){
      student.learn(topic);
    });
  }
}

var corey = new Student("Corey");
var sean = new Student("Sean");

feeney.addStudent(corey);
feeney.addStudent(sean);
feeney.teach("history");
sean.forget();