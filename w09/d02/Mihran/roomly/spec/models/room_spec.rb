require 'spec_helper'

describe Room do
  let(:room) {Room.new}

  describe(:new) do
    it "exists" do
      expect(room).to_not eq(nil)
    end

  end  
end