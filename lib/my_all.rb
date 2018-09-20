require 'pry'

def my_all?(collection)
  if block_given?
    results = []
    i = 0
    while i < collection.size
      results << yield(collection[i])
      i += 1
    end
    if results.include?(false)
      false
    else
      true
    end
  else
    "No block was provided!"
  end
end
