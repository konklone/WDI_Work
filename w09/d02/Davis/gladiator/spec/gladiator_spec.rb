require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do 
  let(:gladiator) { Gladiator.new("Maximus", "Battle Ax") }

  describe '::new' do
    it 'should have a name' do
      expect(gladiator.name).to eq("Maximus")
    end

    it 'should have a weapon' do
      expect(gladiator.weapon).to eq("Battle Ax")
    end
  end
end