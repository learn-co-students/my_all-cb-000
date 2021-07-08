require 'pry'

def my_all?(collection)
    if block_given?
        i = 0
        all_true = true
        while i < collection.length
            all_true = yield(collection[i])
            break if all_true == false
            i += 1
        end
        all_true
    else
        'No block given'
    end
end