class School
  def initialize(name)
    @name = name
    @students = []
  end

  def name
    @name
  end

  def students
    @students    
  end

  def enroll_student(name, gpa)
    students.push({name: name, gpa: gpa})
  end

  def find_student(name)
    students.find do |student|
      student[:name] == name
    end
  end

  def average_gpa
    gpas = students.map do |student|
      student[:gpa]
    end

    sum = gpas.reduce do |sum, gpa|
      sum + gpa
    end

    return sum / gpas.count
  end
end