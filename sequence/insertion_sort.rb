def insertion_sort(arr)
  i = 1
  length = arr.size
  while i < length do
    temp = arr[i]
    j = i - 1
    while j >= 0 && temp < arr[j]
      arr[j + 1] = arr[j]
      j -= 1
    end
    arr[j + 1] = temp
  end
  arr
end
