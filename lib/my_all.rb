require 'pry'

def my_all?(collection)
  i = 0
  all_true = true
  while i < collection.size and all_true
    all_true and yield(collection[i]) ? all_true = true : all_true = false
    i += 1
  end
  all_true
end
