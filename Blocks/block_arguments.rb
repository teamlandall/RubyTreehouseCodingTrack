def get_name
	print "Enter your name: "
	name = gets.chomp
	yield name #calls to the block below to run that code
	name #implicit return for the block get's passed to the get_name method below
end

my_name = get_name do |name|
	puts "That's a cool name, #{name}!"
end

#prints nothing without the implicit return of name in the get_name block
puts "my_name: #{my_name}"