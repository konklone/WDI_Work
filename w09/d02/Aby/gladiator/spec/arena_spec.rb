require 'spec_helper'
require_relative '../lib/arena'

describe Arena do
  let(:arena) { Arena.new("Thunderdome") }

  describe '::new' do
    it 'creates a new arena' do
      arena = Arena.new("Thunderdome")
      expect(arena).to_not eq nil
    end

    it 'has a name' do
      expect(arena.name).to eq("Thunderdome")
    end

    it 'has no gladiators' do
      expect(arena.gladiators.count).to eq(0)
    end
  end

  describe '#add_gladiator' do
    it "adds a gladiator to the arena" do
      arena.add_gladiator("Tina Turner", "mace")
      arena.add_gladiator("Mad Maximus", "trident")
      expect(arena.gladiators.count).to eq(2)
    end

    it "allows max of twenty gladiators" do
      expect(arena.gladiators.count).to be <= 20
    end
  end

  describe '#find_gladiator' do
    context "Tina Turner and Mad Max are in the arena" do
      before do
        arena.add_gladiator("Tina Turner", "mace")
        arena.add_gladiator("Mad Maximus", "trident")
      end

      it 'finds a gladiator' do
        tina = arena.find_gladiator("Tina Turner")
        expect(tina).to eq({name: "Tina Turner", weapon: "mace"})
        max = arena.find_gladiator("Mad Maximus")
        expect(max).to eq({name: "Mad Maximus", weapon: "trident"})
      end
    end
  end

  describe '#fight_winner' do
    it 'chooses a winner between two gladiators' do
      tina = arena.find_gladiator("Tina Turner")
      max = arena.find_gladiator("Mad Maximus")
      expect(arena.fight_winner(tina, max)).to eq("Mad Maximus")
    end
  end

  # if fighter1 has a trident and fighter2 has a sword, and neither fighter is Maximus, fighter1 wins!
  # if fighter1 has a sword and fighter2 has a club, and neither fighter is Maximus, fighter1 wins!
  

end



