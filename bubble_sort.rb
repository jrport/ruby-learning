print 'Enter array size: '

arr_size = gets.to_i
arr = Array.new(arr_size).map{ |arr_item| rand(1...100) }

def bubble_sort(array) 
  unsorted = true
  while unsorted
    unsorted = false
    array.each_with_index do |number, index|
      if index == array.length - 1
       break
      end
      if number > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        unsorted = true
      end
    end
  end
  return array
end

print "Old array: #{arr} \nNew array: #{bubble_sort(arr)}"
