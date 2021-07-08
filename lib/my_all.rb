require 'pry'

def my_all?(collection)
  index = 0
  result = []
  while index < collection.length
    result << yield(collection[index])
    index += 1
  end
  return not(result.include?(false))
end
