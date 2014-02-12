require_relative '../lib/light'

describe Light do

  subject(:light) { Light.new }

  context "when on" do
    before { light.on! }

    it "is on" do
      expect(light.on?).to be_true
    end
  end

  context "when off" do
    before { light.off! }

    it "is off" do
      expect(light.on?).to be_false
    end
  end

  context ""
end