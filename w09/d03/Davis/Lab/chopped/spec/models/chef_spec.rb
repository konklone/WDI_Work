require 'spec_helper'

describe Chef do
  let(:chef) { Chef.new(name: "Bob") }

  describe '::new' do
    it 'has a name' do
      expect(chef.name).to eq("Bob")
    end

    it 'isnt valid without name' do
      chef.name = nil
      expect(chef).to have(1).errors_on(:name)
    end
  end
end