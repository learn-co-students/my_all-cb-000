require 'pry'

def my_all?(collection)
  def my_all?(collection)
    i = 0
    block_return_values = []
    while i < collection.length
      block_return_values << yield(collection[i])  #i += 1 does the same thing. Use this if it's easier for you.
      i += 1
    end

    if block_return_values.include?(false)
      false
    else
      true
    end
  end
end
