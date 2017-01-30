require 'pry'

def my_all?(collection)
	index=0
	while index < collection.count
		if !yield(collection[index])
			return false
		end
		index+=1
	end
	true
end