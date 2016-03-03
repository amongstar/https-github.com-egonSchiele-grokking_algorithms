# Finds the smallest value in an array
def findSmallest(arr)
  # Stores the smallest value
  smallest = arr[0]
  # Stores the index of the smallest value
  smallest_index = 0
  # (1...n) is the same as (1..(n-1))
  (1...(arr.length)).each do |i|
    if arr[i] < smallest
      smallest = arr[i]
      smallest_index = i
    end
  end
  smallest_index
end

# Sort array
def selectionSort(arr)
  newArr = []
  (0...(arr.length)).each do |i|
    # Finds the smallest element in the array and adds it to the new array
    smallest = findSmallest(arr)
    newArr.push(arr.delete_at(smallest))
  end
  newArr
end

# 'p obj' is the same as 'puts obj.inspect'
p selectionSort([5, 3, 6, 2, 10])
