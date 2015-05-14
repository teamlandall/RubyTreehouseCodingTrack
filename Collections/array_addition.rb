grocery_list = ["milk", "eggs", "bread"]

#adds new item to the end of the array
grocery_list << "carrots"
grocery_list.push("potatoes")

#unshift adds to beginning of the array
grocery_list.unshift("celery")

#adds new array into end of original array
grocery_list += ["ice cream", "pie"]

#can combine strings, integers, etc.
grocery_list << 1

#.inspect to see all items in the array
puts grocery_list.inspect