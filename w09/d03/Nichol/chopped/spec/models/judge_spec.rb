require 'spec_helper'

describe Judge do
  
  let(:judge1){ Judge.new }
  
  describe '#name' do
    context "with a name" do
      it "is valid" do
        judge1.name = "Bob"
        expect(judge1).to be_valid
      end
    end

    context "without a name" do
      it "is not valid" do
        judge1.name = nil
        expect(judge1).to have(1).errors_on(:name)
      end
    end

  end

  it "has a good mood to start"
end
