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

  def create_account(name, deposit)
    if deposit >= 200 
      accounts.push({name: name, deposit: deposit})
    end
  end
end