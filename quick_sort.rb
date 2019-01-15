def partition(operator, array)

  array.select { |n| n.send(operator, array.first) }
  #            { |n| n < array.sample }
  # select everything that is smaller than array.sample, which is the pivot itself, and put it into left side of pivot
end

def quick_sort(array)
  return [] if array.empty?
  quick_sort(partition(:<, array)) + [array.first] + quick_sort(partition(:>, array))
  # 1) pick random pivot element
  # 2) partition array into 3 elements
  #       left side of pivot < pivot
  #       pivot itself
  #       right side of pivot > pivot
  # keep doing A and B until array fully sorted
end

a = [5, 10, 12, 3, 1, 7]

p quick_sort(a)
