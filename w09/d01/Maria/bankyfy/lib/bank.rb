class Bank
  def initialize(name)
    @name = name
    @users = []
    @balance = true

  end

  def name
    @name
  end

  def users
    @users
  end

  def balance
    @balance 
  end

  def withdrawal(name, amtW)
    @withdrawal
  end

  def create_account(name, deposit)
    users.push({name: name, deposit: 200})
  end
end