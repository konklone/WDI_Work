require 'spec_helper'

describe Score do 
  let (:score) {Score.new}


  describe '#ranking' do

    context "has a ranking" do
      it "is valid" do
        score.rating = 5
        expect (score).to be_valid
      end
    end




  end



end