require 'pry'

def my_all?(collection)
  if block_given?
    i = 0
    block_return_values = Array.new
    while i < collection.size
      block_return_values << yield(collection[i])
      i += 1
    end
    block_return_values.include?(false) ? false : true
  else
    collection
  end
  
  
end