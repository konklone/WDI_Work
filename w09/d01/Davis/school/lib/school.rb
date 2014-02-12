class School
  attr_reader :name

  def initialize(name)
    @name = name
    @students = []
  end

  def students
    @students
  end

  def enroll_student(name, gpa)
    students << {name: name, gpa: gpa}
  end

  def find_student(name)
    students.find { |student| student[:name] == name }
  end
end