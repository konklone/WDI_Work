require 'spec_helper'

describe User do
  let(:user) { User.new }

  describe '#name' do
    context 'no name' do
      it 'isnt valid' do
        # testing intersection of AR validation & name method
        # expect(user).not_to be_valid
        #or expect(user.valid?).to eq(false)
          # valid? is AR behavior inherited from AR base
        expect(user).to have(1).errors_on(:name)
      end
    end

    context 'has name' do
      before do
        user.email = "stuff@stuff.com"
        user.name = "Jeff"
      end

      it 'is valid' do
        expect(user).to have(0).errors_on(:name)
      end
    end
  end

  describe '#email' do
    context 'no email' do
      it 'isnt valid' do
        expect(user).to have(1).errors_on(:email)
      end
    end

    context 'has email' do
      before do
        user.email = "stuff@stuff.com"
      end

      it 'is valid' do
        expect(user).to have(0).errors_on(:email)
      end

      context 'email exists' do #aka email in db
        before do
          user.name = "Jeff"
          # actually persists to db
          user.save!
        end

        # create another user w/ same email that exists already
        let(:another_user) { User.new(name: "Person", email: "stuff@stuff.com") }

        it 'is not valid' do
          # inspect this email to see if any errors
          expect(another_user).to have(1).errors_on(:email)
        end
      end

      context 'email doesnt exist' do
        it 'is valid' do
          expect(user).to have(0).errors_on(:email)
        end
      end
    end
  end
end
