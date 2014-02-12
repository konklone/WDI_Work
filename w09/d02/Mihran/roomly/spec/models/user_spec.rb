require 'spec_helper'

describe User do
  let(:user) {User.new}

  describe "#name" do
    context "no name" do
      it "isn't valid" do
        expect(user).to have(1).errors_on(:name)
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

  describe '#email' do

    context 'no email' do
      it 'is not valid' do
        expect(user.valid?).to be_false
      end
    end

    context "has email" do
      before do 
        user.email = "jeff@ga.co"
      end

      it "is valid" do
        expect(user).to have(0).errors_on(:email)
      end

        context "email exists" do
          before do
            user.name = "Jeff"
            user.save!
          end

          let(:another_user) {User.new(name: "Some Person", email:"jeff@ga.co")}

          it "is not valid" do
            expect(another_user).to have(1).errors_on(:email)
          end

        end


    end    
  end
end
