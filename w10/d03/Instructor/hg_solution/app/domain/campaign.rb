class Campaign
  def initialize(tribute)
    @tribute = tribute
  end

  attr_reader :tribute

  def acquire_sponsor(sponsor)
    tribute.sponsors << sponsor
  end

  def random_acquisition
    Sponsor.order("random()").limit(rand(0..4)).each do |sponsor|
      acquire_sponsor(sponsor)
    end
  end
end