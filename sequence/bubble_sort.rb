def bubble_sort(arr)
  length = arr.size
  arr.each_index { |i|
    (1..(length - i - 1)).each { |j|
      if arr[j] < arr[j - 1]
        arr[j], arr[j - 1] = arr[j - 1], arr[j]
      end
    }
  }
  arr
end
