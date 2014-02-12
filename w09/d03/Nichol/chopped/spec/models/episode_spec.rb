require 'spec_helper'

describe Episode do

  let(:episode) { Episode.create }
  subject(:chef) { Chef.new }
  
  it "can have 3 rounds" do
    3.times { episode.rounds.create }

    expect(episode).to have(0).errors_on(:rounds)
  end

  # it "can have one round" do
  #   expect(episode).to have(0).errors_on(:rounds)
  # end

  # it "can have zero rounds" do
  #   expect(episode).to have(0).errors_on(:rounds)
  # end

  it "has four rounds and is invalid" do
    4.times { episode.rounds.create }
    expect(episode).to have(1).errors_on(:rounds)
  end

  it "has 4 chefs and is valid" do
    
    chef1 = Chef.new
    chef1.name = "bob"
    chef1.save
    chef1.episode = episode
    chef1.save

    chef2 = Chef.new
    chef2.name = "sam"
    chef2.episode = episode
    chef2.save

    chef3 = Chef.new
    chef3.name = "jim"
    chef3.episode = episode
    chef3.save

    chef4 = Chef.new
    chef4.name = "mat"
    chef4.episode = episode
    chef4.save
    

    expect(episode).to have(0).errors_on(:chefs)
  end

  it "has 5 chefs and and episode is invalid" do
    
    chef1 = Chef.new
    chef1.name = "bob"
    chef1.save
    chef1.episode = episode
    chef1.save

    chef2 = Chef.new
    chef2.name = "sam"
    chef2.save
    chef2.episode = episode
    chef2.save
    
    chef3 = Chef.new
    chef3.name = "jim"
    chef3.save
    chef3.episode = episode
    chef3.save

    chef4 = Chef.new
    chef4.name = "mat"
    chef4.save
    chef4.episode = episode
    chef4.save

    chef5 = Chef.new
    chef5.name = "larry"
    chef5.save
    chef5.episode = episode
    chef5.save
    

    expect(episode).to have(1).errors_on(:chefs)

  end




end
