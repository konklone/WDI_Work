require 'spec_helper'

describe Round do
  let(:episode) { Episode.create(name: "Trailer") }
  let(:round) { Round.new(name: "First Round", episode: episode) }

  context "a round has an associated episode" do
    it "is valid" do
      expect(round).to be_valid
    end
  end

  context "a round does not have an associated episode" do
    it "is not valid" do
      round.episode_id = nil
      expect(round).to have(1).errors_on(:episode_id)
    end
  end

  describe "#max_rounds" do
    context "there are 3 or less rounds per episode" do
      before do
        counter = 1
        2.times do
          Round.create(name: "Round #{counter}", episode: episode)
          counter += 1
        end
      end
      it "is valid" do
        expect(round).to be_valid
      end
    end

    context "there are more than 3 rounds per episode" do
      before do
        counter = 1
        3.times do
          Round.create(name: "Round #{counter}", episode: episode)
          counter += 1
        end
      end
      it "is not valid" do
        expect(round).to have(1).errors_on(:episode_id)
      end
    end
  end
end # end the main describe