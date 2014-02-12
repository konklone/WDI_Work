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

  def new_account(min)
    @new_account = {}
    accounts << @new_account
    @new_account[:amount] = min
    if min < 200 
      'too little money'
    end
  end

  def withdraw(num)
    if accounts.first[:amount] < num
      accounts.first[:amount] = accounts.first[:amount] - 30
    else
      accounts.first[:amount] = accounts.first[:amount] - num
    end
  end

  def deposit(num)
    accounts.first[:amount] = accounts.first[:amount] + num
  end
end