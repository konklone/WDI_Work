require 'spec_helper'

describe Score do
  let(:score) { Score.new }

  describe '#ranking' do
    context "has a ranking" do
      it "is valid" do
        score.ranking = 5
        expect(score).to be_valid
      end
    end
  end
end  
    # context "has no ranking" do
    #   it "isn't valid" do
    #     expect(judge).to have(1).errors_on(:name)
    #   end
    # end