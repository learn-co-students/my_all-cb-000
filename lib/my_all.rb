require 'pry'

def my_all?(collection)
  i = 0
#  block_return_values = []
  rtn = true
  while i < collection.length
     yield(collection[i]) ? true : rtn = false
#    block_return_values << yield(collection[i])
    i = i + 1
  end
  rtn
#  if block_return_values.include?(false)
#    false
#  else
#    true
#  end
end
