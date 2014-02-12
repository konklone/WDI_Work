class Round < ActiveRecord::Base
  validates :number, inclusion: 0..4, presence: true, uniqueness: { scope: :game_id }
  validates :game_id, presence: true
  validate :does_not_exceed_round_limit, on: :create

  belongs_to :game
  has_and_belongs_to_many :tributes, :join_table => "rounds_tributes"

  private

  def does_not_exceed_round_limit
    unless game && game.rounds.count <= 3
      errors.add(:game, "Too many rounds in this game!")
    end
  end
end
