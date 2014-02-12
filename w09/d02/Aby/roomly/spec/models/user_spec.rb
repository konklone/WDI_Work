require 'spec_helper'

describe User do
  let(:user) { User.new }

  describe "#name" do 
    context "no name" do 
      it "isn't valid" do 
        expect(user).not_to be_valid
      end
    end

    context "has name" do
      before do
        user.name = "Jeff"
      end

      it "is valid" do 
        expect(user).to have(0).errors_on(:name)
      end
    end
  end

    describe "#email" do 
      context "no email" do 
        it "isn't valid" do 
          expect(user).to have(1).errors_on(:email)
      end
    end

    context "has email" do 
      before do 
        user.email = "j@k.com"
      end

      it "is valid" do     
        expect(user).to have(0).errors_on(:email)
      end
    end
  end
end
