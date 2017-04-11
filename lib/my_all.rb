require 'pry'

def my_all?(collection)
  consistent = true
  index = 0
  while index < collection.size
    if yield(collection[index])
      index += 1
    else
      consistent = false
      break
    end
  end
  consistent
end
