require 'spec_helper'
require_relative '../lib/coliseum'

describe Coliseum do
  let(:coliseum) {Coliseum.new("The Coliseum")}

  describe '::new' do
    it 'creates a new coliseum' do
      expect(coliseum).to_not eq nil
    end
    it 'has a name' do
      expect(coliseum.name).to eq('The Coliseum') 
    end
  end

  describe '#add_gladiator' do
    it 'creates a new fighter' do
      coliseum.add_gladiator('Maximus','Club') 
      expect(coliseum.gladiators.count).to eq(1)
    end

    it "finds a gladiator" do 
      expect(coliseum.gladiators('Maximus')).to_not eq(nil)
    end 

    it 'defines the gladiator limit' do 
      coliseum.add_gladiator('Maximus','Club') 
        expect(coliseum.gladiators.count).to eq(20)
    end 

    it "doesn't add more than 20 gladiators"
      a = *(1..)
  end 

end