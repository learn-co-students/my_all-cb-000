require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end
  if block_return_values.include?(false)
    false
  else
    true
  end
end
#yield abstracts away the code block we are passing our element of the collection yielded.
