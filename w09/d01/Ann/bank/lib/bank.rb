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

  def create_account(account_num, name, balance)
    if balance >= 200
      accounts.push({account_num: account_num, name: name, balance: balance})
    else 
      raise_error "Too little $$$$"
    end 
  end

  def find_account(account_num)
    accounts.find do |account|
      account[:account_num] == account_num 
    end 
  end 

  def withdrawal()
    withdraw = accounts.find do |account|
      account[:balance] == balance 
      balance - 50  
    end 
  end 

end 

