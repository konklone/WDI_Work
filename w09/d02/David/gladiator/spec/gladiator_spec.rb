require 'spec_helper'
require_relative '../lib/gladiator'

describe Arena do
  let(:arena) { Arena.new("The Colliseum") }
   describe "::new" do
    it "creates a new arena" do
      expect(arena).to_not eq(nil)
    end

    it "has a name" do
      expect(arena.name).to eq("The Colliseum")
    end

    it "has no gladiators" do
      expect(arena.gladiators.count).to eq(0)
    end

   end

   describe "#add_gladiators" do
    before do
      arena.add_gladiators("Sparticus", "axe")
    end
    it "adds a gladiator to the arena" do
      expect(arena.gladiators.count).to eq(1)
    end

    it "gladiator has a weapon" do 
      expect(arena.gladiators["Sparticus"][:weapon]).to eq("axe")
    end
    it "finds a gladiotor" do
      expect(arena.gladiators["Sparticus"]).to_not eq(nil) 
    end
    it "has maximus of 20 gladiators" do
      i = 0
      while i < 25
        arena.add_gladiators(i, "cool weapon #{i}")
        i += 1
      end
      expect(arena.gladiators.count).to eq(20)
    end
   end

   describe "#gladiators_fight" do
    before do
      arena.add_gladiators("Maximus", "axe")
      weapon_arr = ["Trident", "Short Sword", "Club"]
      i = 0
      while i < 3
        arena.add_gladiators(i.to_s, weapon_arr[i])
        i += 1
      end
    end
    it "can pick 2 gladiators to fight" do
      arena.gladiators_fight("1", "2")
      expect(arena.gladiators.count).to eq(3)
    end

    it "Maximus always wins" do
      arena.gladiators_fight("Maximus", "2")
      expect(arena.gladiators["Maximus"]).to_not eq(nil)
      expect(arena.gladiators.count).to eq(3)
    end

    it "Trident beats short sword" do
      arena.gladiators_fight("0", "2")
      expect(arena.gladiators["0"]).to_not eq(nil)
    end


   end





end