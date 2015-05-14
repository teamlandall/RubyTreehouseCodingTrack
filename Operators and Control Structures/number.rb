def get_name()
	print "Enter your name: "
	return gets.chomp
end

def greet(name)
	puts "Hi #{name}!"
	if (name == "Landall")
		puts "That's a great name." 
	else 
		puts "That's not the name we were expecting."
	end	
end

def get_number()
	print "What number would you like to test: "
	return gets.chomp.to_i
end

def divisible_by_3?(number)
	return (number % 3 == 0)
end

name = get_name()
greet(name)
number = get_number()

if divisible_by_3?(number)
	puts "Your number is divisible by 3!"
else 
	puts "Your number is not cleanly divisible by 3!"
end