require 'pry'

def my_all?(collection)
  if block_given?
    i = 0
    block_return_values = []
    while i < collection.length do
      block_return_values << yield(collection[i])
      i += 1
    end
    block_return_values.include?(false)? false:true
  else
    false
  end
end
