# Release 0

def search_array(arr, x)
arr.each_index.select{|i| arr[i] == x}
end

arr = [5, 12, 9, 20]

# p search_array(arr, 9)
# => [2]

# Release 1 - Fibonacci

def fibonacci( n )
	fib = [0, 1]
    (2..n).each do |n|
    next_fib = fib[ n - 1 ] + fib[ n - 2 ]
    fib.push(next_fib)
	end
	fib.delete_at(-1)
	p fib
end 
fibonacci( 6 )
# => [0, 1, 1, 2, 3, 5, 8]



# Release 2 - Bubble Sort

# Define bubble-sorting method for an array of integers
# Figure out the length of the array
# Loop method comparing two values and swap values so that they are in ascending order.
# End loop once all values are evaluated to be in ascending order.
# Print swapped array 

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

array  
end
example = [1, 6, 2, 7, 4]
p bubble_sort(example)