require 'spec_helper'
require_relative '../lib/arena'
require_relative '../lib/gladiator'

describe Arena do
  let(:arena) { Arena.new("The Garden") }
  let(:gladiator) { Gladiator.new("Bob", "Club") }
  let(:maximus) { Gladiator.new("Maximus", "Club") }
  let(:gladiator2) { Gladiator.new("Steve", "Trident") }
  let(:gladiator3) { Gladiator.new("John", "Short Sword") }

  describe '::new' do
    it 'has a name' do
      expect(arena.name).to eq("The Garden")
    end

    it 'starts empty' do
      expect(arena.gladiators.length).to eq(0)
    end

    it 'has no fighers' do
      expect(arena.fighter1).to eq(nil)
      expect(arena.fighter2).to eq(nil)
    end

    it 'has no winner' do
      expect(arena.winner).to eq(nil)
    end

    it 'has an unentertained crowd' do
      expect(arena.entertained).should be_false
    end
  end

  describe '#add_gladiator' do
    it 'adds a gladiator' do
      arena.add_gladiator(gladiator)
      expect(arena.gladiators[0].name).to eq("Bob")
    end

    it 'doesnt add the gladiator if the arena if full' do
      20.times { arena.add_gladiator(gladiator) }
      arena.add_gladiator(gladiator)
      expect(arena.gladiators.count).to eq(20)
    end
  end

  describe '#contains?' do
    it 'checks if gladiator is in the arena' do
      arena.add_gladiator(gladiator)
      expect(arena.contains?(gladiator)).should be_true
    end
  end

  describe '#pick_fighters' do
    it 'picks fighters' do
      arena.pick_fighters(gladiator, maximus)
      expect(arena.fighter1).to eq(gladiator)
      expect(arena.fighter2).to eq(maximus)
    end

    it 'doesnt allow someone to fight themself'
  end

  describe '#fight' do
    it 'decides a winner' do
      arena.pick_fighters(gladiator, gladiator2)
      arena.fight
      expect(arena.winner).to eq(gladiator)
    end

    it 'makes sure trident beats short sword' do
      arena.pick_fighters(gladiator2, gladiator3)
      arena.fight
      expect(arena.winner).to eq(gladiator2)

      arena.pick_fighters(gladiator3, gladiator2)
      arena.fight
      expect(arena.winner).to eq(gladiator2)  
    end

    it 'makes sure short sword beats club' do
      arena.pick_fighters(gladiator3, gladiator)
      arena.fight
      expect(arena.winner).to eq(gladiator3)

      arena.pick_fighters(gladiator, gladiator3)
      arena.fight
      expect(arena.winner).to eq(gladiator3)
    end

    it 'makes sure club beats trident' do
      arena.pick_fighters(gladiator, gladiator2)
      arena.fight
      expect(arena.winner).to eq(gladiator)

      arena.pick_fighters(gladiator2, gladiator)
      arena.fight
      expect(arena.winner).to eq(gladiator)
    end

    it 'makes sure Maximus always wins' do
      arena.pick_fighters(maximus, gladiator3)
      arena.fight
      expect(arena.winner).to eq(maximus)

      arena.pick_fighters(gladiator3, maximus)
      arena.fight
      expect(arena.winner).to eq(maximus)
    end

    it 'entertains crowd if Maximus is fighting' do
      arena.pick_fighters(maximus, gladiator)
      arena.fight
      expect(arena.entertained).should be_true

      arena.pick_fighters(gladiator3, gladiator2)
      arena.fight
      expect(arena.entertained).should be_false
    end
  end

  describe '#vote' do
    it 'kills loser if user input is thumbs down' do
      [maximus, gladiator, gladiator2, gladiator3].each { |gladiator| arena.add_gladiator(gladiator) }
      arena.pick_fighters(maximus, gladiator)
      arena.fight
      arena.vote
      expect(arena.contains?(gladiator)).should be_false
    end
  end
end