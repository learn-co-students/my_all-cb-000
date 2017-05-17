require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    a = yield(collection[i])
    return false if a == false
    block_return_values << a
    i = i + 1
  end
  true
end
