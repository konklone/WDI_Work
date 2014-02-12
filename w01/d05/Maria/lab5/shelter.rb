class Shelter

  def initialize(name)
    @name = name
    @animals = {} # create an empty animals hash but dodnt wprk
    @clients = {} # same here
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

  def to_s
    "#{name}We have #{clients.length} clients and #{animals.length} animals "
  end

  def list_animals
    animals.values.join("\n")
  end
  
  def list_clients
    clients.values.join("\n")
  end
end
