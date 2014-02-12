require "spec_helper"

describe Episode do

  let(:episode) { Episode.new }


  describe '#populate judges' do
    before do
      episode.save!
    end

    it "creates three judges for the show" do
      episode.populate_judges("Ralph","Annette","Derp")
      expect(episode).to have(3).judges
    end

    it "cannot create any more than three judges for the episode" do
      episode.populate_judges("Ralph","Annette","Donnie")
      episode.populate_judges("Loop","Swoop","Moop")
      expect(episode).to have(3).judges
    end
  end


  describe '#populate chefs' do
    before do
      episode.save!
    end

    it "creates four chefs to start the show" do
      episode.populate_chefs("Frank /'the butcher/' Henderson","Lisa /'the bruiser/' Frank","Gordon /'loverboy/' Grant", "Tina /'the tiny/' Turner")
      expect(episode).to have(4).chefs
    end

    it "cannot create any more than four judges for the episode" do
      episode.populate_chefs("Frank /'the butcher/' Henderson","Lisa /'the bruiser/' Frank","Gordon /'loverboy/' Grant", "Tina /'the tiny/' Turner")
      episode.populate_chefs("Leep","Loop","Goop","Toop")
      expect(episode).to have(4).chefs
    end
  end


  describe '#begin round' do
    before do
      episode.save!
    end

    it "creates three rounds" do
      episode.start_round
      expect(episode).to have(3).rounds
    end

    it "only creates three rounds" do
      episode.start_round
      episode.start_round
      expect(episode).to have(3).rounds
    end
  end

  describe "#chops a contestant" do
    it "can access all the rounds"
    it "can access all the dishes made in that round"
    it "can access all the scores of those dishes"
    it "can see which score is the lowest"
    it "can change the chef's chopped to true"
    it "can check for a tie and randomly choose one"
  end

  # it "rewards the winner" do
  # end 
  
end