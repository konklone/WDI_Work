require 'spec_helper'
require_relative '../lib/bank'

#Bank Rspec

# Bank has a name
# User can create a new account at a bank
# user must provide an opening deposit of at least $200
# User can make a withdrawal
# if user overdraws then reject the withdrawal and asses the account a $30 overdraft fee
# User can make a deposit
# User can inspect his/her balance
# Bank can forgive fees for a given user

describe Bank do
let(:bank) { Bank.new("Daddy's Sock Drawer") }

  describe '::new' do

      it "has a name" do
        expect(bank.name).to_not eq nil
      end

  end

  describe '#open_account' do

      # it "is created by user" do
      #   expect(bank.open_account).to be_true
      # end

      it "must be opened with a 200 deposit" do
          expect(bank.open_account(250)).to be_true
          expect(bank.open_account(50)).to be_false
      end

  end

    describe '#user_account' do

      it "can have balance checked" do
         expect(bank.check_balance).to eq(0)
      end

      it "can have money desposited" do
         expect(bank.deposit(100)).to eq(100)
      end

    end

    describe '#user_withdrawls' do
      context "User has an account with some money in it " do
      before do
        bank.deposit(100)
      end


      it "can have money withdrawn" do
        expect(bank.withdraw(10)).to eq(90)
      end

      it "cannot overdraw an account" do
        expect(bank.withdraw(200)).to be_false

      end

      # it "has a penalty for "

    end

  end



end

