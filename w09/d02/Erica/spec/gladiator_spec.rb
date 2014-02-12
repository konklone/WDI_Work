require 'spec_helper'
require_relative '../lib/gladiator'

describe Arena do
  let(:arena) { Arena.new("Armageddian") }

  describe '::new' do
 
    it 'exists' do
      expect(arena).to_not eq nil 
    end

    it 'has a name' do
      expect(arena.name).to eq("Armageddian")
    end

    it 'starts with an empty arena' do
      expect(arena.gladiators).to eq([])
    end  
  end

  describe '#add_gladiator' do

      context "Adding a gladiator with a name and a weapon" do 

        before do
          arena.add_gladiator("Mihranix", "sword")
        end

        it 'adds a gladiator to the arena' do
          expect(arena.gladiators.count).to eq(1)
        end

        it 'has a name' do
          expect(arena.gladiators[0]["name"]).to eq("Mihranix")
        end

        it 'has a weapon' do
          expect(arena.gladiators[0]["weapon"]).to eq("sword")
        end

      end

      context "Adding too many gladiators" do
        # before do 
        #   a= *(1..21)
        #   a.each {|x| arena.add_gladiator("#{x}", "#{x}")}
        # end

        it 'doesn;t add more than 20 gladiators' do
          a= *(1..20)
          a.each {|x| arena.add_gladiator("#{x}", "#{x}")}
          expect(arena.add_gladiator("Obelix", "club")).to eq("Too many gladiators in the arena!")
        end
      end

      context "Search for a specific gladiator in the arena" do
        before do
          arena.add_gladiator("Mihranix", "ipod")
          expect(arena.find_gladiator("Mihranix")).to eq("#{name} found.")
        end
      end
      # context "Trying to add a gladiator with too many weapons" do

      #   it 'disallows adding a gladiator with more than one weapon' do
      #     expect(arena.add_gladiator("Asterix", "bow","arrow")).to eq("Too many weapons!")
      #   end     
      # end

  end
end


