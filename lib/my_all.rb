require 'pry'

def my_all?(collection)
  results = []
  i = 0
  while i < collection.length
    results << yield(collection[i])
    binding.pry
    i += 1
  end

if results.include?(false)
  false
else
  true
end
end
