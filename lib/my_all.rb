require "pry"

def my_all?(collection)

  if block_given?
    i = 0 
    block_return_values = Array.new
    while i < collection.length
      block_return_values << yield(collection[i])
      i += 1
    end
    
    if block_return_values.include?(false)
      return false
    else
      return true
    end
  end
  

end


my_all?([1,2,3]) {|i| i < 2}
