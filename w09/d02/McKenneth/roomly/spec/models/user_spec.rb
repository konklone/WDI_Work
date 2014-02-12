require 'spec_helper'

describe User do
let(:user) {User.new}

  describe '#name' do
    context 'no name' do
      it "isn't valid" do
        expect(user).to have(1).errors_on(:name)
        # expect(user.valid?).to eq(false)
      end
    end

    context "has name" do
      before do
        user.name = "McK"
      end

      it "is valid" do
        expect(user).to have(0).errors_on(:name)
        # expect(user.valid?).to eq(true)
        # .valid? is an ActiveRecord method
      end
    end
  end

  describe '#email' do
    context 'no email' do
      it "isn't valid" do
        expect(user).to have(1).errors_on(:email)
      end
    end

    context 'has email' do
      before do
        user.email = "m@c.k"
      end
      it "is valid" do
        # expect(user.valid?).to eq(true)
        expect(user).to have(0).errors_on(:email)
      end
    

      context 'email exists' do
        before do
          user.name = "McK"
          user.save! #must be persisted in order for the uniqueness validator to work
        end
        let(:another_user) {User.new({name: "Mack", email: "m@c.k"})}

        it "is not valid" do
          expect(another_user).to have(1).errors_on(:email)
        end

      end

      context "email does not exist" do
        it "is valid" do
          expect(user).to have(0).errors_on(:email)
        end
      end
    end
  end
end
