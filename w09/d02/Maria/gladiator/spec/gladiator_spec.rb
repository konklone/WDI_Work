require 'spec_helper'
require_relative '../lib/gladiator'

describe Arena do 
  let(:arena) {Arena.new("Thunderdome")}

  describe '::new' do

    it "creates a new arena" do
      expect(arena).to_not eq nil
     end

    it 'has a name' do
      expect(arena.name).to eq ("Thunderdome")
     end

    it 'has no gladiators' do
      expect(arena.gladiators.length).to eq (0)
    end
  end

describe '#add_gladiator' do

  it 'adds a gladiator to the arena' do
    arena.add_gladiator("Rufus Broadsword", "Trident")
    expect(arena.gladiators.length).to eq (1)
  end

  it 'does not allow to add anymore gladiators after 20' do
        for num in 1..20
          arena.add_gladiator(num, "club")
        end

        expect(arena.add_gladiator("joe", "blow")).to be_false

    end
  end

  it 'can only accept unique gladiators' do
    arena.add_gladiator("Rufus Broadsword", "Trident")
    expect(arena.add_gladiator("Rufus Broadsword", "Trident")).to be_false

  end

  describe '#find_gladiator' do
    it 'can see if a certain gladiator is in the arena' do
      arena.add_gladiator("Rufus Broadsword", "Trident")
      expect(arena.find_gladiator("Rufus Broadsword")).to be_true
    end
  end

end