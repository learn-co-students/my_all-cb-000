require 'pry'

def my_all?(collection)
  i = 0
  block_value = []
  while i < collection.size
    block_value.push(yield collection[i])
    i += 1
  end
  block_value.include?(FALSE) ? FALSE : TRUE
end