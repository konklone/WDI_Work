require 'spec_helper'

describe Round do
  let(:round) do
    Round.new(name: "one", episode_id: 1)
  end

  it "is valid if it has all the attributes" do
    expect(round).to be_valid
  end

  it "is invalid without a name" do
    round.name = nil
    expect(round).to have(1).errors_on(:name)
  end

  it "is invalid if not associated with an episode" do
    round.episode_id = nil
    expect(round).to have(1).errors_on(:episode_id)
  end

end
