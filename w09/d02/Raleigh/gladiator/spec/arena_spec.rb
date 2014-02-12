require 'spec_helper'
require_relative '../lib/arena'


describe Arena do
   let(:arena){Arena.new("The Coliseum")}

   describe '#name' do
      it 'has a name' do
         expect(arena.name).to eq("The Coliseum")
      end
   end

   describe '#gladiators' do
      it "contains gladiators" do
         expect(arena.gladiators).to_not eq nil
      end
   end

   describe '#new_gladiator' do
      before do
         i=0
         while i <= 22 do
            arena.new_gladiator("Ajax", "Long sword")
            i += 1
         end
      end

      it "has a name and a weapon" do
         expect(arena.new_gladiator("Ajax", "Long sword")).to include(name: "Ajax", weapon: "Long sword")
      end

      it "returns new gladiator" do
         expect(arena.new_gladiator("Ajax", "Long sword")).to eq({name: "Ajax", weapon: "Long sword"})
      end

      it 'can only have 20 or less gladiators' do
         expect(arena.gladiators.count).to be <= 20
      end
   end

   describe '#find' do
      before do
         arena.new_gladiator("Ajax", "Long sword")
      end

      it 'can view a gladiator in the area' do
         expect(arena.find("Ajax")).to eq true
      end
   end

   context 'fighting with Maximus' do 
      before do
         arena.new_gladiator("Ajax", "Long sword")
         arena.new_gladiator("Maximus", "Bare hands")
         arena.fight(arena.gladiators[0])
         arena.fight(arena.gladiators[1])
      end

      describe '#fight' do 
         it 'can have two gladiators fight' do
            expect(arena.fighting.count).to eq(2)
         end
      end

      describe '#winning' do
         it 'can have a winner of the fight' do
            expect(arena.winner).to eq("Maximus")
         end
      end
   end

   context 'fighting without Maximus' do 
      let(:ajax) {arena.new_gladiator("Ajax", "Short sword")}
      let(:gimli) {arena.new_gladiator("Gimli", "Club")}
      let(:khal) {arena.new_gladiator("Khaleesi", "Dragons")}

      describe '#winner of Ajax and Gimli' do
         it 'can have a winner of the fight' do
            arena.fight(ajax)
            arena.fight(gimli)

            expect(arena.winner).to eq("Ajax")
         end
      end

      describe '#winner of Ajax and Khaleesi' do
         it 'can have a winner of the fight' do
            arena.fight(ajax)
            arena.fight(khal)

            expect(arena.winner).to eq("Khaleesi")
         end
      end

      describe '#winner of Gimli and Khaleesi' do
         it 'can have a winner of the fight' do
            arena.fight(gimli)
            arena.fight(khal)

            expect(arena.winner).to eq("Gimli")
         end
      end
   end
end