require 'pry'

def my_all?(collection)
  i = 0
  x = collection.length
  block_return_values = []
  while i < x
    block_return_values << yield(collection[i])
    i += 1
  end
  block_return_values.include?(false) ? false : true
end
