def quick_select_sort (arr)
  quick_select_sort_help(arr, 0, arr.length - 1)
  arr
end

def quick_select_sort_help(arr, start_point, end_point)
  if start_point < end_point
    position = partition(arr, start_point, end_point)
    quick_select_sort_help(arr, start_point, position - 1)
    quick_select_sort_help(arr, position + 1, end_point)
  end
end

def partition(arr, start_point, end_point)
  pivot = arr[end_point]
  j = start_point - 1

  (start_point..end_point).each do |i|
    if arr[i] <= pivot
      j += 1
      if i != j
        arr[i], arr[j] = arr[j], arr[i]
      end
    end
  end
  j
end
