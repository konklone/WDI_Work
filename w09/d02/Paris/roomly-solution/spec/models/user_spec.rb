require 'spec_helper'

describe User do
  let(:user) { User.new }

  describe '#email' do
    context "with an email" do
      it "is valid" do
        user.email = "jeff@ga.co"
        expect(user).to be_valid
      end
    end

    context "with no email" do
      it "isn't valid" do
        expect(user).to have(1).errors_on(:email)
      end
    end

    context "with a taken email" do
      before do
        User.create(email: "shmee@hello.com")
      end

      it "isn't valid" do
        user.email = "shmee@hello.com"

        expect(user).to have(1).errors_on(:email)
      end
    end
  end
end
