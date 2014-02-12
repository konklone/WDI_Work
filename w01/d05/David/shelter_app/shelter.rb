class Shelter

  def initialize(name)
    @name = name
    @animals = Hash.new
    @clients = Hash.new
  end

  def name
    @name
  end

  def animals
    @animals
  end

  def clients
    @clients
  end

  def list_animals
    @animals.values.join("\n")
  end

  def list_clients
    @clients.values.join("\n")
  end

  def to_s
    puts "Name: #{name}, Number of Animals: #{animals.length}, Number of Clients: #{clients.length}"
  end

end