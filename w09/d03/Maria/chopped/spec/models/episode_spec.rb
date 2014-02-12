require 'spec_helper'

describe Episode do
  let(:Episode) do
    Episode.new(name: "Episode One")
  end 
 
#difference between using context and describe?
  context "has name" do
    before do
      user.name = "Episode One"
    end

    it "does stuff" do
      expect(false).to eq(true  )
    end
  end
end