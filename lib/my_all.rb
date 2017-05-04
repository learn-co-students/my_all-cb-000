require 'pry'

def my_all?(collection)
  i = 0
  storage = []
  while i < collection.length
    storage << yield(collection[i])
    i += 1
  end
  storage.all?
end

array = []

my_all?(array) {|i| i < 2 }
