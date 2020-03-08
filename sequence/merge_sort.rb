def merge_sort(arr)
  merge_sort_help(arr, 0, arr.size - 1)
  arr
end

def merge_sort_help(arr, start_point, end_point)
  if start_point < end_point
    mid_point = (start_point + end_point) / 2
    merge_sort_help(arr, start_point, mid_point)
    merge_sort_help(arr, mid_point + 1, end_point)
    merge(arr, start_point, mid_point, end_point)
  end
end

def merge(arr, start_point, mid_point, end_point)
  left_length = mid_point - start_point + 1
  right_length = end_point - mid_point
  i, j = 0, 0
  index = 0
  temp_arr = []

  while i < left_length && j < right_length
    if arr[start_point + i] < arr[mid_point + 1 + j]
      temp_arr[index] = arr[start_point + i]
      index += 1
      i += 1
    else
      temp_arr[index] = arr[mid_point + 1 + j]
      index += 1
      j += 1
    end
  end
  while i < left_length
    temp_arr[index] = arr[start_point + i]
    index += 1
    i += 1
  end
  while j < right_length
    temp_arr[index] = arr[mid_point + 1 + j]
    index += 1
    j += 1
  end

  index = 0
  (start_point..end_point).each do |point|
    arr[point] = temp_arr[index]
    index += 1
  end
end
