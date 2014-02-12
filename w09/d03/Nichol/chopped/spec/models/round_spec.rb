require 'spec_helper'

describe Round do
  let(:episode) { Episode.create }
  subject(:round) { Round.new }

  it "is valid if this is the 2nd round" do

  end

  it "is invalid if this is the 4th round" do
    3.times { episode.rounds.create }

    round.episode = episode
    round.save

    expect(round).not_to be_persisted
  end

end