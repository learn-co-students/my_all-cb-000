require 'pry'

def my_all?(collection)
  count = 0
  while count < collection.length
    truth = yield(collection[count])
    return false if truth == false
    count += 1
  end
  true
end