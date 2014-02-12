require 'spec_helper'
require_relative '../lib/bank'
require_relative '../lib/user'


describe User do
   let(:user) {user = User.new("Bob")}

   context 'a user account' do
      describe '#new' do
         it 'a new account can be created' do
            expect(user.account).to_not eq nil
         end
      end

      describe 'initial balance' do
         it 'new account must have a minimum of $200' do
            expect(user.account).to be >= 200
         end
      end

      describe '#withdraw' do
         it 'a widthdrawal can be made from the account' do
            expect(user.withdraw(10)).to eq("$10 withdrawn: Your balance is now: 190")
         end
      end

      describe 'overdraft fees added' do
         it 'an overdraft fee is added if an account is overdrawn' do
            expect(user.withdraw(205)).to eq("Insufficient funds: Your balance is now: 170")
         end
      end

      describe '#deposit' do
         it 'a deposit can be made into the account' do 
            expect(user.deposit(50)).to eq(250)
         end
      end

      describe '#balance' do
         it 'the balance of the account can be displayed' do
            expect(user.balance).to eq("Your balance is: 200")
         end
      end

      describe 'fees can be forgiven' do
         it 'all fees on an account can be forgiven' do
            expect(user.fees).to eq(0)
         end
      end

   end
end