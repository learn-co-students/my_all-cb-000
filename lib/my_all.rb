require 'pry'

def my_all?(collection)
  all_true = true;
  i = 0
  while i < collection.length
    if !yield(collection[i])
      all_true = false;
      break
    end
    i += 1
  end
  return all_true
end
