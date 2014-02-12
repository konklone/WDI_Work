class Shelter

  def initialize(name)
    @name = name
    @animals = {}
    @clients = {}
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
    "This shelter has #{@animals.count} animals and #{@clients.count} clients."
  end

end
