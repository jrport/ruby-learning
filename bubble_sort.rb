arr = Array.new(10).map{ |value| rand(0...100) }

def bubble_sort(arr)
  unsorted = true
  while unsorted
    unsorted = false
    arr.each_with_index do |number, index| 
      if index == arr.length - 1
        break
      end
      if number > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        unsorted = true
        puts arr.to_s
      end
    end
  end
  puts "Sorted: #{arr.to_s}"
end

print "Original: #{arr} \n"
bubble_sort(arr)
