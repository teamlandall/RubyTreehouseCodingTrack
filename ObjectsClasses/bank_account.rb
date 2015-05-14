class BankAccount
	attr_reader :name

	#initiale method
	def initialize(name)
		@name = name
		@transactions = []
		add_transaction("Beginning Balance", 0)
	end

	#credit method: adds money to the balance
	def credit(description, amount)
		add_transaction(description, amount)
	end

	#debit method: subtracts money from the balance
	def debit(description, amount)
		add_transaction(description, -amount)
	end		

	#Adds the descripton and the amount of each transaction to the hash.
	def add_transaction(description, amount)
		@transactions.push(description: description, amount: amount)
	end

	#calculates the balance by iteratin through the hash.
	def balance
		balance = 0
		@transactions.each do |transaction|
			balance += transaction[:amount]
		end
		return balance
	end

	#returns integers as string
	def to_s
		"Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
	end

	#Prints the entire register to the screen
	def print_register
		puts "#{name}'s Bank Account"
		puts "-" * 40

		#prints the description and amount of each transaction in the transaction hash.
		#applies left formatting and right formatting (ljust(x)/rjust(x))
		puts "Description".ljust(30) + "Amount".rjust(10)
		@transactions.each do |transaction|
			puts transaction[:description].ljust(30) + sprintf("%0.2f", transaction[:amount]).rjust(10)
		end

		#prints ending balance after all transactions calculated
		puts "-" * 40
		puts "Balance:".ljust(30) + sprintf("%0.2f", balance).rjust(10)
		puts "-" * 40
	end

end

#assigns new class
bank_account = BankAccount.new("Landall")

#calls the method adding arguments for transactions and amounts to the hash
bank_account.credit("Paycheck", 100)
bank_account.debit("Groceries", 40)
bank_account.debit("Gerbals", 13.26)

#prints the bank account to the screen
puts bank_account

#prints Register and calls print_register method including all the formatting for easier viewing.
puts "Register: "
bank_account.print_register