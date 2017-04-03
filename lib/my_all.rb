require 'pry'

def my_all?(collection)
  i = 0
  while i < collection.length
    return false if yield(collection[i]) == false
    i = i + 1
  end
  true
end
