# fpassing in pivot with the greater than method
# everything  to the left of pivot, put in arr_left
# everything  to the right of pivot, put in arr_right

class Array
  def quick_sort
    return [] if empty?
    pivot = delete_at(rand(size))
    arr_left, arr_right = partition(&pivot.method(:>))
    return *arr_left.quick_sort, pivot, *arr_right.quick_sort
  end
end

a = [ 2, 12, 3, 5, 6, 7]

p a.quick_sort
