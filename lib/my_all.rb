require 'pry'

def my_all?(collection)
  i = 0
  collection_matched = []
  while i < collection.length
    collection_matched << yield(collection[i])
    i += 1
  end
#  binding.pry
  if collection_matched.include?(false)
    false
  else
    true
  end
end
