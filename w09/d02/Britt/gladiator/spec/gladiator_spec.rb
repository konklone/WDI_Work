require 'spec_helper'
require_relative '../lib/gladiator'

describe 'Gladiator' do
  let(:glad){Gladiator.new("We need to make it epic.")}

  describe "::new" do
    
    it "has a name" do
      expect(glad.name).to_not eq(nil)
    end

    it "can haz gladiators" do
      expect(glad.meat).to be_an_instance_of Array
    end

    it "has an arena" do
      expect(glad.butcher_shop).to be_an_instance_of Array
    end

  end

  describe "#add_fresh_meat" do
    it "adds a gladiator to make it epic" do
      glad.add_fresh_meat({name: "Maximus", weapon: "Gluteus"})
      expect(glad.meat[0]).to eq({name: "Maximus", weapon: "Gluteus"})
    end

    context "There are 20 meat_products in meat" do
      before do
        i=0
        while i < 20
          glad.add_fresh_meat({name: "Maximus", weapon: "Gluteus"})
          i+=1
        end
      end

      it "can only hold up to 20 gladiators" do
        expect {glad.add_fresh_meat({name: "Maximus", weapon: "Gluteus"})}.to raise_error
      end 
    end
  end

  describe "#are_you_there" do
    before do
      glad.add_fresh_meat({name: "Maximus", weapon: "Gluteus"})
    end
    it "will tell you whether a gladiator is alive" do
      expect(glad.are_you_there?("Maximus")).to eq(true)
    end
    it "will return false if they are the die" do
      expect(glad.are_you_there?("Poncho")).to eq(false)
    end
  end

  context "three meatwads are in the arena & READY TO FIGHT" do
    before do
      glad.add_fresh_meat({name: "Maximus", weapon: "Gluteus"})
      glad.add_fresh_meat({name: "Optimus", weapon: "Club"})
      glad.add_fresh_meat({name: "Nikola", weapon: "Trident"})
    end

    describe "#round_one_fight!" do
      it "will select two fighters at random to brawl" do
        glad.round_one_fight!
        expect(glad.butcher_shop.count).to eq(2)
      end
    end

    describe "u_guise_haz_entertained?" do
      it "returns true when Maximus was in the last round_one_fight!" do
        glad.butcher_shop = [{name: "Optimus", weapon: "Club"},{name: "Maximus", weapon: "Gluteus"}]
        expect(glad.u_guise_haz_entertained?).to eq(true)
      end
      it "returns false when Maximus was NOT in the last round_one_fight!" do
        glad.butcher_shop = [{name: "Optimus", weapon: "Club"},{name: "Nikola", weapon: "Trident"}]
        expect(glad.u_guise_haz_entertained?).to eq(false)
      end
    end

    describe "winner_winner_chicken_dinner" do
      before do
        glad.round_one_fight!
      end
      it "makes loser the die and when user says make them the die" do
        expect(glad.are_you_there?(glad.last_loser)).to eq(false)
      end
      it "makes loser the live when user no makeo the die" do
        expect(glad.are_you_there?(glad.last_loser)).to eq(true)
      end
    end
  end

end