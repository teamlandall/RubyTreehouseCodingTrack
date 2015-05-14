require "./todo_item"

class TodoList
	attr_reader :name, :todo_items

	def initialize(name)
		@name = name
		@todo_items = []
	end

	#add items to todo items array.
	def add_item(name)
		todo_items.push(TodoItem.new(name))
	end

	#uses find_index() to remove items at specific index locations
	def remove_item(name)
		if index = find_index(name) 
			todo_items.delete_at(index)
			return true
		else
			return false
		end
	end
	
	#uses find_index() to mark items complete at specific index locations
	def mark_complete(name)
		if index = find_index(name) 
			todo_items[index].mark_complete!
			return true
		else
			return false
		end
	end

	#iterates through array to find index location of specific items
	def find_index(name)
  	index = 0
  	found = false
 	 	todo_items.each do |todo_items|
    	if todo_items.name == name
      	found = true
      	break
    	else
      	index += 1
    	end
  	end

  	if found 
    	return index
  	else 
    	return nil
  	end
	end

	#prints total list, completed items and incompleted items lists
	def print_list(kind='all')
		puts "#{name} List - #{kind} items"
		puts "-" * 30
		todo_items.each do |todo_item|
			case kind
			when 'all'
				puts todo_item
			when 'complete'
				puts todo_item if todo_item.complete?
			when 'incomplete'
				puts todo_item unless todo_item.complete?
			end
		puts "\n" 
	end
		

end

todo_list = TodoList.new("Groceries")

#Adds a bunch of items
todo_list.add_item("Milk")
todo_list.add_item("Eggs")
todo_list.add_item("Bread")
todo_list.add_item("Butter")

#test for remove_item()
if todo_list.remove_item("Eggs")
	puts "Eggs removed from the list." 
end

#test for mark_complete()
if todo_list.mark_complete("Milk")
	puts "Milk was marked as complete." 
end
puts "\n"

#calls print_list, complete and incomplete for display
todo_list.print_list
todo_list.print_list('complete')
todo_list.print_list('incomplete')

end
