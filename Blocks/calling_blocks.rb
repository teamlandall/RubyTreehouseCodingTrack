def get_name(prompt, &block)
	print prompt + ": " 
	name = gets.chomp
	block.call(name) #calls block in replace of yield. Takes arguments.
	name 
end

my_name = get_name("Enter your name") do |name|
	puts "That's a cool name, #{name}!"
end

#prints nothing without the implicit return of name in the get_name block
puts "my_name: #{my_name}"