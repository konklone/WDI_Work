require 'pry'
class Bank

  def initialize(name)
    @name = name
    @accounts = []
  end

  def name
    @name
  end 

  def accounts
    @accounts
  end

  def create_account(balance)
    unless balance > 200
    @accounts << balance
      end
  end

  def withdraw(amount)
    @accounts[0]-= amount

  end
end