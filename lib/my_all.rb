require 'pry'

def my_all?(collection)
	false_rval = false
	if block_given?
		collection.each { |item| false_rval = true unless yield(item) }
	end
	!false_rval
end
