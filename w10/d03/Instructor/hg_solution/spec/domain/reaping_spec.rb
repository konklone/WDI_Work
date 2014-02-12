require 'spec_helper'

describe Reaping do
  let(:district) { FactoryGirl.create(:district) }
  let(:game) { FactoryGirl.create(:game) }

  before do
    ["m", "f"].each do |gender|
      FactoryGirl.create(:teen, gender: gender, district: district)
    end
  end

  subject(:reaping) { Reaping.new(game, district)  }

  it "turns reaped citizens into tributes" do
    expect {
      reaping.commence
    }.to change {
      Tribute.count
    }.from(0).to(2)
  end

  it "reaps one male and one female citizen" do
    reaping.commence

    expect(
      reaping.tributes.one? { |tr| tr.gender == "m" } &&
      reaping.tributes.one? { |tr| tr.gender == "f" }
    ).to be_true
  end

  it "adds them to the correct game" do
    reaping.commence

    expect(game.tributes).to match_array(reaping.tributes)
  end
end