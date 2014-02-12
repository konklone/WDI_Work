require 'spec_helper'
require_relative '../lib/gladiator'

describe Arena do 
  let(:arena) { Arena.new("FunkPalace")}

  describe '::new' do
    it 'creates a new arena' do
      expect(arena).to_not eq nil
   end

   it 'has a name' do
      expect(arena.name).to eq("FunkPalace")
    end

   it 'has no gladiators' do
      expect(arena.gladiators.count).to eq(0)
    end
   end

  describe "#add_gladiator" do
    it 'adds a gladiator to the arena' do
      arena.add_gladiator("Steve", "Club")
      expect(arena.gladiators.count).to_not eq(0)
    end

    it 'adds a max of 20 unique gladiators' do 
      for i in 0...20
        arena.add_gladiator("#{i}", "Club")
        expect(arena.gladiators.uniq).to have_at_most(20).things
     end
    end
  end

  describe "#find_gladiator" do
    context "Steve is a gladiator" do
      before do
        arena.add_gladiator("Steve", "Club")
      end
    
    it 'checks to see if a gladiator is in the arena' do
    steve = arena.find_gladiator("Steve")
    expect(steve).to eq({name: "Steve", weapon: "Club"})
    end
end
end
end




