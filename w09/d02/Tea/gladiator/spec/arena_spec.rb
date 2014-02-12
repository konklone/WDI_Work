require 'spec_helper'
require_relative '../lib/arena'
require_relative '../lib/gladiator'

describe Arena do
  let(:arena) { Arena.new("Death Cage")}

  describe '::new' do
    it 'exists, this arena' do
      expect(arena).to_not eq(nil)
    end

    it 'has a name' do
      expect(arena.name).to eq("Death Cage")
    end

    it 'can support up to 20 unique gladiators' do
      expect(arena.gladiators.count).to be <= 20
    end
  end

  context '20 gladiators have been added' do
    before do
      20.times do |n|
        arena.add_gladiator(Gladiator.new((n+1).to_s, "Club"))
      end
    end
    describe '#add_gladiator' do
      it 'adds a gladiator to its gladiator roll sheet' do
        expect(arena.gladiators.last.name).to eq("20")
      end

      it 'will kill a gladiator if you try to add but there are already 20' do
        arena.add_gladiator(Gladiator.new("Brad", "Club"))
        expect(arena.gladiators.count).to be <= 20
      end
    end
    describe '#find_gladiator' do
      it 'finds a gladiator' do
        expect(arena.find_gladiator("1").name).to eq("1")
      end

      it 'finds a gladiator AGAIN and checks its weapon' do
        expect(arena.find_gladiator("1").weapon).to eq("Club")
      end
    end

    describe '#pick_two' do
      it 'allows you to pick two gladiators' do
        expect(arena.pick_two("1", "2")).to_not eq(nil)
      end
    end
  end

  describe '#fight' do
    it 'pits two fighters together in the @fighter context' do
      arena.add_gladiator(Gladiator.new("Brad", "Trident"))
      arena.add_gladiator(Gladiator.new("Maximus", "Short sword"))
      arena.pick_two("Brad", "Maximus")
      expect(arena.fighters.first).to eq("Brad")
    end
  end
end