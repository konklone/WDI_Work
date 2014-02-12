require 'spec_helper'

describe Chef do
  
  let(:chef1) { Chef.new }

  it "should have a name" do
    chef1.name = "Bob"
    expect(chef1).to be_valid
  end

  it "should be invalid if it doesn't have a name" do
    chef1.name = nil
    expect(chef1).to_not be_valid
  end



end
