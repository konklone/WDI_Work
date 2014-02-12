class Reaping
  def initialize(game, district)
    @game = game
    @district = district
    @tributes = []
  end
  attr_reader :district, :game, :tributes

  def commence
    become_tributes([
      district.citizens.random.female.teen.first,
      district.citizens.random.male.teen.first
    ])
    add_tributes_to_game
  end

  private

  def become_tributes(selected)
    selected.each do |citizen|
      citizen.update(type: "Tribute")
      tributes << citizen.becomes(Tribute)
    end
  end

  def add_tributes_to_game
    tributes.each { |tribute| game.tributes << tribute }
  end
end