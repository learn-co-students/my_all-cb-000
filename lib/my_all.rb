require 'pry'

def my_all?(collection)
    index = 0
    block_return_values = []

    while index < collection.size
        block_return_values << yield(collection[index])
        index += 1
    end

    if block_return_values.include?(false)
        return false
    else
        return true
    end
end
