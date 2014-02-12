require 'spec_helper'
require_relative '../lib/clockhands'

# Write a function angle_between_hands that given the time of the day in hours
# and minutes returns the angle between the hands on a clock.
# It should give a positive angle and return the smaller one (ie less than 180 degrees)

describe "angle_between_hands" do
  it "works at noon" do
      expect(angle_between_hands(12,0)).to eq(0)
  end

  it "works at when the hour changes" do
      expect(angle_between_hands(1,0)).to eq(30)
  end

  it "works at when the hour hand is ahead" do
      expect(angle_between_hands(6,5)).to eq(152)
  end

  it "works when the minute hand is ahead" do
      expect(angle_between_hands(2,30)).to eq(105)
  end

  it "gives the smaller, positive angle (<180 degrees)" do
      expect(angle_between_hands(10,20)).to eq(170)
  end
end