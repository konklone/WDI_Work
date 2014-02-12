class Bank
  attr_reader :name, :accounts

  def initialize(name)
    @name = name
    @accounts = {}
  end

  def create_account(name, starting_amount)
    starting_amount >= 200 ? @accounts[:name] = starting_amount : "Must be at least $200"
  end

  def find_account
    accounts.find do |account|
      account[:name] == name
    end
  end

  def withdrawal(name, amount)
    if amount >= accountamount
      withdrawal = accounts.amount - amount
    else 
      overdraft = accounts.amount - 30
      puts "withdrawal rejected"
    end
  end
end
