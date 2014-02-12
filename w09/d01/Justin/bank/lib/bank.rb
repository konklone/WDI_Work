class Bank
	def initialize(bank_name)
    	@bank_name = bank_name
    	@accounts = {}
  	end

  	def name
  		@bank_name
  	end

  	def open_account(name, ammount)
  		key = name.to_sym
  		if ammount >= 200
	  		@accounts[key] = ammount
	  	end
  	end

  	def accounts
  		@accounts
  	end

  	def withdrawal(name, ammount)
  		key = name.to_sym
  		@accounts[key] -= ammount
  	end
end

