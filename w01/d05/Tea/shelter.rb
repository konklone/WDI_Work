class Shelter
  def initialize(name)
    @name = name
    @animals = {}
    @clients = {}
  end

  def name
    @name
  end

  def clients
    @clients
  end

  def animals
    @animals
  end

  def to_s
    "Shelter name: #{name}. Shelter clients: #{clients} Shelter animals: #{animals}."
  end

  def list_clients
    clients.values.join(" | ")
  end

  def list_available_animals
    animals.keys.join(" | ")
  end
end