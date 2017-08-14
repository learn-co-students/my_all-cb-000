require 'pry'

def my_all?(collection)
  # 1. iterate through each element in the collection, using while; increment by 1 each time
  i = 0
  block_return_values = [] # new array
  while i < collection.length
    # 2. yield each element in the collection to the block
    block_return_values << yield(collection[i]) # 3. save the return value of the yield block (shovel return values into new array)
    i += 1
  end
end
