require 'spec_helper'

describe RoundStarter do

  let(:episode) { Episode.create(name:"ULTIMATE ROUNDS") }

  it "starts the first round" do
    starter = RoundStarter.new(episode)
    round = starter.next_round

    expect(round.category).to eq("Appetizer")
    expect(episode.rounds.reload).to include(round)
  end


  it "starts the second round" do
    starter = RoundStarter.new(episode)
    starter.next_round
    entree = starter.next_round
    expect(entree.category).to eq("Entree")
    expect(episode.rounds.reload).to include(entree)
    expect(episode.rounds.length).to eq(2)
  end

  it "starts the third round" do
    starter = RoundStarter.new(episode)
    starter.next_round
    starter.next_round
    dessert = starter.next_round
    expect(dessert.category).to eq("Dessert")
    expect(episode.rounds.reload).to include(dessert)
    expect(episode).to have(3).rounds
  end

end