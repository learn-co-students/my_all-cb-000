require 'pry'

def my_all?(collection)
  a = 0
  returnvalues=[]
  while a < collection.length
    returnvalues << yield(collection[a])
    a+=1
  end
  if returnvalues.include?(false)
    return false
  else
    return true
  end
end
