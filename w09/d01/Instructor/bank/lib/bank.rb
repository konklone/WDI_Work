class Bank
  def initialize(name)
    @name = name
    @customers = []
  end

  attr_reader :customers

  def name
    @name
  end

  def open_account(name, starting_balance)
    customers.push({name: name, balance: starting_balance}) unless starting_balance < 200
  end

  def customer(name)
    found = customers.find do |customer|
      customer[:name] == name
    end

    if found && block_given?
      yield(found)
    else
      found
    end
  end

  def balance(name)
    customer(name) do |customer|
      return customer[:balance]
    end
  end

  def deposit(name, amount)
    customer(name) do |customer|
      customer[:balance] += amount
    end
  end
end