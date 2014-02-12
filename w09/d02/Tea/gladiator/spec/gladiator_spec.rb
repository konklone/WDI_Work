require 'spec_helper'
require_relative '../lib/gladiator'
require_relative '../lib/arena'

describe Gladiator do
  let(:gladiator) { Gladiator.new("Brad", "Club") }

  it 'can be forged into existance' do
    expect(gladiator).to_not eq(nil)
  end

  it 'should have a name' do
    expect(gladiator.name).to_not eq(nil)
  end

  it 'should have a weapon' do
    expect(gladiator.weapon).to_not eq(nil)
  end
end
