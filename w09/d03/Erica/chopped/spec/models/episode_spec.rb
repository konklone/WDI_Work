require 'spec_helper'

describe Episode do 

  context "the episode exists" do
    let(:episode) do
      Episode.new(name: "appetizer", rounds_id: 1)
    end

    it "is valid if it has all the attributes" do
      expect(episode).to be_valid
    end
  end

  context "the episode is not valid" do
    let(:episode) do
      Episode.new(name: nil, rounds_id: nil)
    end

    it "is not valid" do
      expect(episode).to have(1).errors_on(:name)
    end
  end

  context "it has exactly three rounds" do
    let(:episode) { Episode.create(name: "Italian Night") }

    before do
      Round.create(category: "appetizer", episode: episode, winner: nil, tie: false)
      Round.create(category: "entree", episode: episode, winner: nil, tie: false)
      Round.create(category: "main course", episode: episode, winner: nil, tie: false)
    end

    it "checks for three rounds" do
      expect(episode.rounds.length).to eq(3)
    end

    context "four rounds" do
      before do
        Round.create(category: "main course", episode: episode, winner: nil, tie: false) 
      end

      it "is not valid" do
        expect(episode.rounds.length).to_not eq(3)
      end
    end
  end
end

