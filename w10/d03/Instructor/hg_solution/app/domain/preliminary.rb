class Preliminary
  def initialize(game)
    @game = game
  end

  attr_reader :game

  def run
    game.tributes.each do |tribute|
      tribute.update(rating: [*1..10].sample)
    end
  end
end