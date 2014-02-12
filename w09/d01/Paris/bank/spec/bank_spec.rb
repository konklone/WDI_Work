require_relative '../lib/bank'
require 'spec_helper'

# Bank has a name User can create a new account at a bank user must provide an opening deposit of at least $200 User can make a withdrawal. 
# if user overdraws then reject the withdrawal and assess the account a $30 overdraft fee.
 # User can make a deposit 
 # User can inspect his/her balance 
 # Bank can forgive fees for a given user

describe Bank do
  let(:bank) { Bank.new("Bank of America") }
  # let(:account) {Account.new("account")}

    describe '::new' do
      it 'creates a new bank' do
        expect(bank).to_not eq nil
      end

      it 'has a name' do
        expect(bank.name).to eq("Bank of America")
      end

      it 'has accounts' do
        expect(bank.account).to_not eq nil
      end

      it 'can take a deposit' do
        expect(bank.deposit).to_not eq nil
      end

      it 'initializes with a base deposit of 200' do
        expect(bank.deposit).should be >= 200
      end  
    
      it 'adds a deposit to an account' do
        bank.make_deposit(300)
      end

      it 'can take a withdrawal' do
        expect(bank.withdrawal).to_not eq nil
      end

      it 'subtracts a withdrawal from an account' do
        bank.make_withdrawal(50)
      end

      it 'rejects withdrawals that are too big' do
        bank.overdrawn(250)
        # expect(bank.overdrawn).should be "you've overdrawn on your account!"  
        # bank.balance == -80
      end
    end


end