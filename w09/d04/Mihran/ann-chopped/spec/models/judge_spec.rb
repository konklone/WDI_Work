require 'spec_helper'

describe Judge do
  let(:judge) { Judge.new }

  describe '#name' do
    context "has a name" do
      it "is valid" do
        judge.name = "Ann"
        expect(judge).to be_valid
      end
    end

    context "has no name" do
      it "isn't valid" do
        expect(judge).to have(1).errors_on(:name)
      end
    end

    context "with a taken name" do
     before do
       Judge.create(name: "Ann")
     end

     it "isn't valid" do
       judge.name = "Ann"
       expect(judge).to have(1).errors_on(:name)
     end
    end
  end

  describe '#episodes' do 
    let(:episode) {Episode.new(name: "Tropicalia")}
    let(:judge) { Judge.new(name: "Ann") }

    before do 
      judge.save 
      episode.save 
    end 

    it "has many episodes" do 
      judge.episodes << episode 
      judge.episodes.reload 

      expect(judge.episodes).to include(episode) 
    end 
  end 

  describe '#scores' do 
    let(:score) {Score.new(ranking: 5)}
    let(:judge) { Judge.new(name: "Ann") }

    before do 
      score.save 
      judge.save 
    end 

    it "has many scores" do 
      judge.scores << score
      judge.scores.reload 

      expect(judge.scores).to include(score)
    end 
  end 

end