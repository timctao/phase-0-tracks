# Release 0

def search_array(arr, x)
arr.each_index.select{|i| arr[i] == x}
end

arr = [5, 12, 9, 20]

p search_array(arr, 9)

# arr = [42, 89, 23, 1]
# p search_array(arr, 1)
# => 3
# p search_array(arr, 24)
# => nil