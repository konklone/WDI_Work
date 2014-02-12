class Person


  def initialize (name)
    @name = name
  end

  def say_name
    @name
  end

  def watch(movie)
    puts "Let's watch #{@title}"
  end

end

jeff = Person.new("Jeff")
jeff.say_name


