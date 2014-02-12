require 'spec_helper'

describe User do
  let(:user) { User.new }

  describe "#name" do
    context "i didn't give it no name" do
      before do
        user.name = nil
      end
      it "isn't valid" do
        expect(user).to have(1).errors_on(:name)
      end
    end

    context "has name" do
      it "is valid" do
        expect(user).to have(0).errors_on(:name)
      end
    end
  end

  describe "#email" do
    context "no email" do
      it "is not valid" do
        expect(user).to have(1).errors_on(:email)
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

        let(:another_user) { User.new(name: "Some Person", email: "jeff@ga.co") }

        it "is not valid" do
          expect(another_user).to have(1).errors_on(:email)
        end
      end

      context "email doesn't exist" do
        it "is valid" do
          expect(user).to have(0).errors_on(:email)
        end
      end
    end
  end

  describe '#rent' do
    context "no money in account" do
      it 'does not let you rent if you do not have enough money' do
        expect(user.rent).to have(1).errors_on(:balance)
      end
    end
  end
end