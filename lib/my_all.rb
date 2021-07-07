require 'pry'

def my_all?(collection)
  idx = 0
  block_return_values = []
  while idx < collection.length
    block_return_values << yield(collection[idx])
  idx += 1
  end
    if block_return_values.include?(false)
      false
    else true
  end
end
