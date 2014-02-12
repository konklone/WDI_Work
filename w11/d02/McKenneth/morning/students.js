
function Student(name){
	this.name = name;
	this.skills = [];
	this.zoned = false;
}

Student.prototype.learnSkill = function(newSkill){
	this.skills.push(newSkill);
}
Student.prototype.forgetIt =  function(){
	this.skills.pop();
}
Student.prototype.zoneOut = function(){
	if(this.zoned === true){
		this.zoned = false;
	}else{
	this.zoned = true;
	}
}

var feeney = {
	name: "Feeney",
	students: [],
	addStudent: function(newKid){
		this.students.push(newKid);
	},
	teachThem: function(aSkill){
		_.each(this.students, function(student){
			student.learnSkill(aSkill);
		})
	}
}

