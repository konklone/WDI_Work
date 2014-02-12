require 'spec_helper'

describe Judge do 
  let(:judge) { Judge.new(name: "Steve") }

  describe '::new' do
    it 'has a name' do
      expect(judge.name).to eq("Steve")
    end

    it 'isnt valid without name' do
      judge.name = nil
      expect(judge).to have(1).errors_on(:name)
    end
  end
end