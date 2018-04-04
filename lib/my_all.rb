require 'pry'

def my_all?(collection)
  return_values = []
  i = 0
  while i < collection.length
    return_values << yield(collection[i])
    i += 1
  end
  if return_values.include?(false)
    return false
  else
    return true
  end
end
