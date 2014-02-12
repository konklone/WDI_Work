require 'spec_helper'

describe Round do
  subject(:round) { FactoryGirl.build(:round) }
  let(:game) { FactoryGirl.create(:game) }

  describe "validations" do
    subject { round }

    it { should belong_to(:game) }
    it { should validate_presence_of(:game_id) }
    it { should have_and_belong_to_many(:tributes) }
    it { should ensure_inclusion_of(:number).in_range(0..4) }
    it { should validate_presence_of(:number) }
    it { should validate_uniqueness_of(:number).scoped_to(:game_id) }
  end

  describe "#game" do
    before do
      round.game = game
    end

    context "4 existing games" do
      before do
        4.times { |i| FactoryGirl.create(:round, game: game, number: i) }
      end

      it "is not valid" do
        expect(round).to have(1).errors_on(:game)
      end
    end

    context "less than 4 existing games" do
      it "is valid" do
        expect(round).to have(0).errors_on(:game)
      end
    end
  end
end
