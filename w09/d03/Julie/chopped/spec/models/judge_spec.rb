require 'spec_helper'

describe Judge do
  let(:judge) {Judge.new}

  describe '#name' do
    context "with a name" do
      it "is valid" do
        judge.name = "Randy"
        expect(judge).to be_valid
      end     
    end

    context "with no name" do
      it "isn't valid" do
        expect(judge).to have(1).errors_on(:name)
      end
    end    
  end
end