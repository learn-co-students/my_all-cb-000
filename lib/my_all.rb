require 'pry'


def my_all?(arr)
  i = 0
  collection = []
  while i < arr.length
    collection << yield(arr[i])
    i = i + 1
  end

  # if collection.include?(false)
  #   false
  # else
  #   true
  # end

  # collection.each {|i|
  #   if i == false
  #     return false
  #   end
  #   }
  # true
  j = 0
  res = true
  while j < collection.size do
    if collection[j] == false
      res = false
    end
    j += 1
  end
  return res
end
