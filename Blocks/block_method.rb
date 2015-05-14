def block_method
	puts "This is the first line in block method"
	yield 
	yield
	puts "This statement is after yield"
end

block_method do
	puts "This statement is called from the block"
end

block_method