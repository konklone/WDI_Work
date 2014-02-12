require 'spec_helper'
require_relative '../lib/bank'

describe Bank do 
  let (:bank) {Bank.new("NYC Credit Union")}

  describe '::new' do 
    it 'creates a new bank' do 
      expect(bank).to_not eq nil
    end  

    it 'has a name' do 
      expect(bank.name).to eq("NYC Credit Union")
    end 
  end 

  describe '#create_account' do 
    it 'adds an account to the bank' do 
      bank.create_account("1234", "Ann", 250)
      expect(bank.accounts.count).to eq(1)
    end 
  end 

  describe '#find_account' do 
    context "Ann has an account" do 
      before do 
        bank.create_account("1234", "Ann", 200)
      end

      it "finds the account in the bank" do 
        ann = bank.find_account("1234")
        expect(ann).to eq({account_num: "1234", name: "Ann", balance: 200})
      end 

      it "doesn't find non-existent accounts" do 
        expect(bank.find_account("1234594")).to eq(nil)
      end  
    end 

      context "no matching account" do 
        it "doesn't find an account" do 
          expect(bank.find_account("48329048329")).to eq(nil)
        end 
      end 
    end 

    describe '#withdrawl'do 
      context "Ann has an account" do 
        before do 
          bank.find_account("1234")
        end

      it "withdrawls money" do 
        expect(account.withdrawl).to eq(200)
      end 
    end 
  end 


end 
    

 

  #     it "withdraws from the account balance" do 

  # end 

 