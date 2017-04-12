require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    return false if yield(collection[i]) == false
    i+=1
  end
  true
end
